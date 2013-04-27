class Event < ActiveRecord::Base
  attr_accessible :name, :city, :country, :data

  has_many :ideas
end
