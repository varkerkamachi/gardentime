class Caredifficulty < ActiveRecord::Base
  attr_accessible :level
  validates_presence_of :level
end
