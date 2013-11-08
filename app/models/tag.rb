class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :taggings
  has_many :integrate_developments, through: :taggings
end
