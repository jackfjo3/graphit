class Trackable < ActiveRecord::Base
  belongs_to :graph
  has_many :points

  validates :name, presence: true
end
