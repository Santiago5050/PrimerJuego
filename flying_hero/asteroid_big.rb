require 'gosu'
require_relative 'asteroid'

class AsteroidBig < Asteroid

  def initialize(window)
    super(window)
  end

  def self.scale_y
    2
  end

  def self.scale_x
    2
  end

  def move!
    @x -= 15
  end
end
