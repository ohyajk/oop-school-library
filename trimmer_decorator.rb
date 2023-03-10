require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @decoration.correct_name.capitalize[0...9]
  end
end
