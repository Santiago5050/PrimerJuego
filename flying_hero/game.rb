require_relative 'Background'

require 'gosu'

class Game < Gosu::Window
  def initialize
    super(900, 550, fullscreen: false)

    self.caption = 'Flying hero!'
    @background = Background.new
  end

  def draw
    @background.draw
  end

  def button_down(id)

    if id == Gosu::KbC

      close

    end
  end
end
