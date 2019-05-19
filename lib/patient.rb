class Patient
  attr_accessor :name, :doctor
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(name, doctor)
   Appointment.new(name, self, doctor)
  end
  
  def appointments 
    Appoitnment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
   appointments.map do |appointment|
      appointment.doctor
    end
  end
end