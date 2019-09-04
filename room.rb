# Room class and any methods for interacting with the room.
class Room
  attr_accessor :description, :inventory, :directions, :requirements, :name, :visited, :light, :rejectMessage, :intro

  def initialize(name, des, inv, dir, req, reject, lit, intro)
    self.name = name
    self.description = des
    self.inventory = inv
    self.directions = dir
    self.requirements = req
    self.rejectMessage = reject
    self.light = lit
    self.intro = intro
    self.visited = false
  end

  def addItem(item)
    self.inventory.push(item)
  end

  def removeItem(item)
    self.inventory.delete(item)
  end

  def visit
    if !self.visited
      self.visited = true
    end
  end

  def describe
    if (self.inventory.empty?)
      return self.visited ? self.name : self.description
    else
      return self.visited ? self.name : self.description + "\nThis room has a " + self.inventory[0] + " in it."
    end
  end
end