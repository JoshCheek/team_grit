class Person
  attr_reader :last_name

  def initialize(first, last)
    @apple = first
    @last_name = last
  end

  def to_s
    "#{@apple} #{last_name}"
  end
end

[ Person.new("Josh", "Cheek"),
  Person.new("Rachel", "Parri"),
  Person.new("Rebekah", "Sosa")
].join(", ")
