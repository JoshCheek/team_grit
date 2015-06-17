# Video illustrating how to play this game:
#   https://s3.amazonaws.com/josh.cheek/screencasts/rachel/InceptionGames.mp4


# =====  Setup  =====
# This is setup code, you may copy it for now, but attempt to move towards creating it from scratch.
# The code does not have to be the same every time, it just needs to facilitate the games below.

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


# =====  Games  =====

# -----  The Nightmare  -----
# This is the expression we built up, predicting each value as we went.
# The kata is to delete it, and build up omething similarly complex
# by checking that you correctly predict the value of the expression
# each time you add to it.
people[
  people[
    people[
      people[
        (people[
          people[
            people[
              people[
                people[people[people[people[people[0].first_name.length].last_name.length - 3].first_name.upcase.reverse.length].vehicles[-1].model.length / 2]
                  .first_name.length
              ].vehicles.map { |vehicle| vehicle.make }.map { |make| make.length }.select { |n| n.odd? }[-1] - 3
            ].first_name.length
          ].vehicles.map { |lol| lol.year }.map { |x| 123 }.length
        ].vehicles[0].year - 2000) / 5
      ].vehicles[0].make.length - 2
    ].vehicles[1].year - people[4].vehicles[0].year - 6
  ].vehicles[-1].model.length / 2
]
# => #<Person:0x007fa764877bf8
#     @first_name="Jeff",
#     @last_name="Casimir",
#     @vehicles=
#      [#<Vehicle:0x007fa764877d60 @make="Mazda", @model="Miata", @year=2004>,
#       #<Vehicle:0x007fa764877ce8 @make="Porsche", @model="911", @year=2014>,
#       #<Vehicle:0x007fa764877c48
#        @make="Ford",
#        @model="Explorer",
#        @year=1988>]>



# -----  The homing missile  -----
# Delete the expression below, attempt to iteratively build up a chain of method invocations
# without running it to check the value. Your goal is to build an expression as large
# as you can, while predicting the correct value when you finally decide to run it.
# It is called the "homing missile", because you can think about what you expect teh value to be
# as you build it up, which allows you to do what you did above, just without confirmation.
# ...if you get really good at this one, attempt to create an expression as large as your nightmare!

people[4].vehicles[0].make.length # => 5


# -----  Games with Names  -----
# This is to practice thinking in terms of names.
# The general idea is to delete the code below, choose a name like `jeffs_mazda`,
# make that a local variable, and then figure out what to set it to,
# such that its name makes sense. Here are specific things to try:
#
# Names all the way down
#   as you work backwards from the final variable,
#   each step must either reference a variable you wish existed (eg `jeffs_miata = jeffs_vehicles[0]`)
#   which would require you to make a new variable, `jeffs_vehicles`,
#   or a variable that already exists, (eg `jeff = people[4]`),
#   where everything on the right-hand-side already exists.
#
# The great consolidation
#   Given that you have an expression using many local variables,
#   remove each local variable, one at a time,
#   until the final variable is defined without referencing any variables other than `people`
#
# The Great fragmentation
#   For each of the expressions you consolidated in the great consolidation,
#   try pull them back out into local variables.
#   Your goal is to have as many local variables as you possibly can.
#   All names must be meaningful to you, whre "meaningful" is defined as:
#   "You know what object the variable points at, purely by looking at the name of the variable"

jeff           = people[4]
jeffs_vehicles = jeff.vehicles
jeffs_audi     = jeffs_vehicles[0]
jeffs_audi # => #<Vehicle:0x007fa764877d60 @make="Mazda", @model="Miata", @year=2004>
