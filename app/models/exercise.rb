class Exercise < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :calories_burned, :presence => true
end
