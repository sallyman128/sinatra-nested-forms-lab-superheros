class Team
  attr_accessor :name, :motto

  def initialize(hash)
    @name = hash[:name]
    @motto = hash[:motto]
  end
end