class Gallery < ActiveRecord::Base
  belongs_to :plant
  attr_accessible :image1, :image2, :image3
end
