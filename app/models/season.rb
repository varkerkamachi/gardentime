class Season < ActiveRecord::Base
  attr_accessible :id, :name
  validates_presence_of :name
  
end
