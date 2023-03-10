require './nameable'

class Decorator < Nameable
  attr_accessor :decoration
  def initialize(nameable)
    @decoration = nameable
    super()
  end

  def correct_name
    @decoration.correct_name
  end
end
