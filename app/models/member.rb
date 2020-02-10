class Member
  attr_reader :name, :role, :house, :patronus
  def initialize(info)
    @name = info[:name]
    @role = nil
    @house = info[:house]
    @patronus = nil
  end
end
