class State < ActiveRecord::Base
  has_many :cities
  has_many :businesses

  validates_presence_of :name
end