class Appointment
  attr_accessor :name, :doctor, :patient
  @@all = []
  
  def initialize(name, doctor, patient)
    @name = name
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  def self.all 
    @@all
  end
end