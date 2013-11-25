class Neighborhood < ActiveRecord::Base
  has_many :submissions
  accepts_nested_attributes_for :submissions
end
