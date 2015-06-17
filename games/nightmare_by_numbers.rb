# =====  Nightmare By Numbers  =====
# This is like "The Nightmare" in the Inception Games,
# But your goal is to use as many of the different methods and classes
# from the cheatsheets, as you can.

class Person
  attr_accessor :first_name, :last_name, :vehicles
  def initialize(first_name, last_name, vehicles)
    self.first_name = first_name
    self.last_name  = last_name
    self.vehicles   = vehicles
  end
end

class Vehicle
  attr_accessor :make, :model, :year
  def initialize(make, model, year)
    self.make  = make
    self.model = model
    self.year  = year
  end
end

people = [
  Person.new("Josh",    "Cheek",   []),
  Person.new("Rachel",  "Parri",   [Vehicle.new("Subaru", "Outback",        2006)]),
  Person.new("Rebekah", "Sosa",    [Vehicle.new("Subaru", "Impreza",        2004)]),
  Person.new("Jack",    "Yeh",     [Vehicle.new("Toyota", "4-runner",       2015)]),
  Person.new("Jeff",    "Casimir", [Vehicle.new("Mazda",   "Miata",         2004),
                                    Vehicle.new("Porsche", "911",           2014),
                                    Vehicle.new("Ford",    "Explorer",      1988)]),
  Person.new("David",   "Daniel",  [Vehicle.new("Ford",    "Crown Victoria", 2004),
                                    Vehicle.new("Audi",    "A4",             2012)]),
]
