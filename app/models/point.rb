class Point < ActiveRecord::Base
  belongs_to :trackable
  validates :value, presence: true
end
