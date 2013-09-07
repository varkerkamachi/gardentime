class PlantType < ActiveRecord::Base
  attr_accessible :description, :features, :name
  validates_presence_of :name
  
end
