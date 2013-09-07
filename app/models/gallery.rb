class Gallery < ActiveRecord::Base
  belongs_to :plant
  attr_accessible :plant_id, :image1, :image2, :image3
  validates_presence_of :plant_id
  validates_numericality_of :plant_id, :integer_only => true
end
