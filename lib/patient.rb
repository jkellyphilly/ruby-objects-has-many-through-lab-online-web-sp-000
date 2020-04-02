class Patient

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

  # Creates a new appointment given a doctor and a date
  def new_appointment(doctor, date)

  end

  # Returns all appointments associated with this Patient
  def appointments

  end

  # Returns all doctors associated with this Patient
  def doctors

  end

end
