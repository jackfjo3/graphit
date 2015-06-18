class Graph < ActiveRecord::Base
  belongs_to :user
  has_many :trackables
  has_many :entries #hopefully this pluralization works!
end
