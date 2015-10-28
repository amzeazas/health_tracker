class Exercise < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :calories_burned, :presence => true
  has_many :workouts
  has_many :users, :through => :workouts
end
