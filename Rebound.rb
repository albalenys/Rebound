require_relative "inventory.rb"

class GameSession

  attr_accessor :name, :elemental, :location, :inventory

  def initialize
    @@name = nil
    @@elemental = false
    @@location = nil
    @@inventory = Inventory.new
  end

  def inv_display
    p inventory
  end

  def next_stage
    @@path = 0
    stage = 1
    until stage == 4
      clear_screen
      file = "storyline/" + stage.to_s + "." + @@path.to_s + ".rb"
      load file
      stage += 1
    end
  end

  def start
    puts File.read "instructions.txt"
    gets.chomp
    clear_screen

    next_stage
  end

  def clear_screen
    puts "\e[H\e[2J" #May not work cross-platforms.
  end

end


game = GameSession.new
game.start
