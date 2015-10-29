class Exercise < ActiveRecord::Base
  validates :calories_burned, :presence => true
  validates :activity, :presence => true
  validates :activity, :uniqueness => true
  has_many :workouts
  has_many :users, :through => :workouts
end
