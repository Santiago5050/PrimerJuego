require 'gosu'
require_relative 'asteroid'

class AsteroidSmall < Asteroid
  def move!
    @x -= 20
  end

  def self.value
    -15
  end
end
