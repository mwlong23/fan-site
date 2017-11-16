class Beer < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :style
end
