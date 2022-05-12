class Patient
  attr_reader :name, :cured
  attr_accessor :room

  def initialize(attributes = {})
    @name = attributes[:name]
    @cured = attributes[:cured] || false
  end

  def cure!
    @cured = true
  end
end

class Room
  attr_accessor :capacity, :patients
  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise StandardError, "Room is full!" if full?
    patient.room = self
    @patients << patient
  end

end

patient = Patient.new(name: 'James Harden')
puts patient.name
puts patient.cured
patient.cure!
puts patient.cured

room = Room.new(capacity: 3, patients: 1)
puts room.capacity
puts room.patients

# Add new patient
room.add_patient(patient)
puts room.patients
