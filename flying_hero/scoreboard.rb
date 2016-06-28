require 'gosu'

class Scoreboard
  def initialize
    @score = 0
  end

  def draw
    @image = Gosu::Image.from_text(self, "Score: #{@score}", Gosu.default_font_name, 50)
    @image.draw(0,0,1)
  end
end
