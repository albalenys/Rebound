class Dice
attr_reader :ratio

  def initialize
    @ratio = ratio
  end

  def roll(ratio)
    roll = rand(1..ratio)
    return roll == ratio
  end
end
