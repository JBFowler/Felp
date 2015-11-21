class City < ActiveRecord::Base
  belongs_to :state
  has_many :businesses

  validates_presence_of :name
end