class Inventory
  attr_accessor :inventory

  def initialize
    @inventory = []
  end

  def display
    puts "-" * 30
    puts "Current inventory: #{inventory}" if !(inventory.empty?)
    puts "-" * 30
  end

  def add(item)
    inventory.push(item)
  end

  def remove(item)
    inventory.delete(item)
  end

end
