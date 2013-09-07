class Location < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  validates_length_of :name, :maximum=>48, :message=>"choose a shorter location name"
  
end
