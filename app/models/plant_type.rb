class PlantType < ActiveRecord::Base
  has_many :plants
  attr_accessible :description, :features, :name
  validates_presence_of :name
  
end
