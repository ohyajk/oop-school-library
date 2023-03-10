require './nameable'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? == true || parent_permission == true
  end

  private

  def of_age?
    @age < 18
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
