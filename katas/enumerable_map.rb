def map(collection, &b)
  results = []
  collection.each { |element| results << b.call(element) }
  results
end

class Person
  attr_reader :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end
end

people = [
  Person.new("Josh", "Cheek"),
  Person.new("Rachel", "Parri"),
  Person.new("Rebekah", "Sosa"),
]

map(people) { |person| person.first_name }
# => ["Josh", "Rachel", "Rebekah"]

map(people) { |person| person.last_name }
# => ["Cheek", "Parri", "Sosa"]

map([100, 200, 300]) { |n| n/2 }
# => [50, 100, 150]
