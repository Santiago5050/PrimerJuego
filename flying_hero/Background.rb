require 'gosu'

class Background

  def initialize
    @image = Gosu::Image.new('assets/images/background.jpg', titleable: true)
    @width = @image.width
    @x = 0
  end

  def draw
    @image.draw(@x,0,0)
  end

end
