class Submission < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :descriptors
end
