class Caredifficulty < ActiveRecord::Base
  attr_accessible :level, :description
  validates_presence_of :level
end
