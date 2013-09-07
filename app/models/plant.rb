class Plant < ActiveRecord::Base
  belongs_to :location
  belongs_to :season
  belongs_to :gallery
  belongs_to :caredifficulty
  belongs_to :plant_type
  attr_accessible :plant_type_id, :caredifficulties_id, :location_id, :season_id, :gallery_id, :description, :genus, :name, :geoX, :geoY
  
  validates_presence_of :name
  
  scope :by_type, lambda{ |n| { :plant_type_id => n } }
  scope :by_difficulty, lambda{ |n| { :caredifficulties_id => n } }
  scope :by_season, lambda{ |n| { :season_id => n } }
  scope :by_location, lambda{ |n| { :location_id => n } }
  
    
  def has_images?
    gallery_id != nil
  end
  
end
