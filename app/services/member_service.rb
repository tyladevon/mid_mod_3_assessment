class MemberService
  def initialize(house)
    @house = house
  end

  def members_get
    response = conn.get("v1/characters")
    data = JSON.parse(response.body, symbolize_names: :true)

    data.map do |member_info|
      Member.new(member_info)
      binding.pry
    end
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
