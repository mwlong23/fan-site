class Style < ActiveRecord::Base
  validates :style_name, :presence => true
  has_and_belongs_to_many :breweries
  has_many :beers
end
