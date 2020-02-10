class MemberInfo
  def initialize(house)
    @house = house
  end

  def members_get
    data = MemberService.new(@house).members_call

    data.map do |member_info|
      member = Member.new(member_info)
    end
  end
end
