class Season < ActiveRecord::Base
  attr_accessible :id, :name, :description
  validates_presence_of :name
  
end
