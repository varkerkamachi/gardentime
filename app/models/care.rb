class Care < ActiveRecord::Base
  belongs_to :plant
  belongs_to :soil
  attr_accessible :optimum_temperature_high, :optimum_temperature_low, :sun, :sun_frequency, :water, :water_frequency
end
