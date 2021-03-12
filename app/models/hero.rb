class Hero
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @bio = hash[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end