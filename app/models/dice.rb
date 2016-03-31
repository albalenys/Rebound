class Dice
attr_reader :ratio

  def initialize
    @ratio = ratio
  end

  def roll(ratio)
    rand(1..ratio) == ratio
  end
end
