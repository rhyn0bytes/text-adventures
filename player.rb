class Player
  attr :position, true
  attr :inventory, true

  def initialize(room)
    self.position = room
    self.inventory = Array.new
  end

  def addItem(item)
    self.inventory.push(item)
  end

  def removeItem(item)
    self.inventory.delete(item)
  end
end