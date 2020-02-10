class MemberService
  def initialize(house)
    @house = house
  end

  def members_call
    response = conn.get("v1/characters")
    JSON.parse(response.body, symbolize_names: :true)
  end

  private

  def conn
    Faraday.new(url: "https://www.potterapi.com") do |f|
      f.adapter  Faraday.default_adapter
      f.params[:key] = ENV['HARRY_POTTER_API_KEY']
      f.params[:house] = @house
      f.params[:orderOfThePhoenix] = true
    end
  end
end
