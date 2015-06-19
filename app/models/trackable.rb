class Trackable < ActiveRecord::Base
  has_many :points
  belongs_to :graph
  serialize :data #delete data, actually. now use points
end
