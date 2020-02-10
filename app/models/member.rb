class Member
  attr_reader :name, :role, :house, :patronus
  def initialize(info)
    @name = info[:name]
    @role = info[:role]
    @house = info[:house]
    @patronus = nil
  end
end
