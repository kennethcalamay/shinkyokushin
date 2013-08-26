class Dojo < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :instructor

  has_many :users
end
