class Style < ActiveRecord::Base
  validates :style, :presence => true
  has_and_belongs_to_many :breweries
  has_many :beers
end
