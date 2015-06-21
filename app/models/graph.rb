class Graph < ActiveRecord::Base
  belongs_to :user
  has_many :trackables
end
