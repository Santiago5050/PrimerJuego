require_relative 'Background'
require_relative 'Hero'
require_relative 'candy'
require_relative 'asteroid_small'
require_relative 'asteroid_big'
require_relative 'scoreboard'

require 'gosu'

class Game < Gosu::Window
  def initialize
    super(900, 550, fullscreen: false)

    self.caption = 'Flying hero!'
    @background = Background.new
    @hero = Hero.new
    @candy = Candy.new(self)
    set_asteroid
    @score = Scoreboard.new
  end

  def set_asteroid
    @asteroid = @asteroid && @asteroid.instance_of?(AsteroidBig) ?
      AsteroidSmall.new(self) : AsteroidBig.new(self)
  end

  def draw
    @score.draw
    @asteroid.draw
    @background.draw
    @hero.draw
    @candy.draw
  end

  def button_down(id)

    if id == Gosu::KbEscape

      close

    end
  end

  def update
    @background.scroll!

    if button_down?(Gosu::KbUp)
      @hero.move_up!
    elsif button_down?(Gosu::KbDown)
      @hero.move_down!(height) #height = alto de la pantalla (Gosu::Window)
    end

    @candy.move!
    @asteroid.move!

    if @asteroid.x < (0 - @asteroid.width)
      set_asteroid
    end

    if @candy.x < (0 - @candy.width)
      @candy.reset!(self)
    end
  end
end
