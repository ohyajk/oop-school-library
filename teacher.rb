require './person'

class Teacher < Person
  def initialize(specilization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specilization = specilization
  end

  def can_use_services?
    true
  end
end
