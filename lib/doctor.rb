require 'pry'

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

  # Creates a new appointment for the Doctor, given a
  # patient and a date
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    my_patients = []
    binding.pry
    appointments.each do |appt|
      binding.pry
      my_patients << appt.patient if !my_patients.include?(appt.patient)
      binding.pry
    end
    my_patients
    binding.pry
  end

end
