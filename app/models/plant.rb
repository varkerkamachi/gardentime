class Plant < ActiveRecord::Base
  belongs_to :location
  belongs_to :season
  belongs_to :gallery
  belongs_to :caredifficulty
  attr_accessible :description, :genus, :name
end
