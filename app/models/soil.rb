class Soil < ActiveRecord::Base
  attr_accessible :name, :scale, :description
  validates_presence_of :name, :scale
  validates_numericality_of :scale, :only_integer=>true
  
end
