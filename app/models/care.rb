class Care < ActiveRecord::Base
  belongs_to :plant
  belongs_to :soil
  attr_accessible :soil_id, :plant_id, :optimum_temperature_high, :optimum_temperature_low, :sun, :sun_frequency, :water, :water_frequency
  validates_presence_of :plant_id

  def sun_lover?
    sun >= 8 && sun_frequency == 'daily'
  end
  
  def water_lover?
    water >= 8 && water_frequency == 'daily'
  end
  
  def drought_tolerant?
    water <= 2 && water_frequency == 'rarely'
  end


end
