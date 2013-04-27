class Event < ActiveRecord::Base
  attr_accessible :city, :country, :data

  has_many :ideas
end
