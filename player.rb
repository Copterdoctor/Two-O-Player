class Player
  attr_accessor :lives
  attr_accessor :name
  def initialize (name)
    @lives = 3
    @name = name
  end
end