class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # Returns all appointments associated with this Doctor
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def new_appointment(patient, date)

  end

  def patients

  end

end
