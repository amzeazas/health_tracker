class Food < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :calories, :presence => true
  has_many :meals
  has_many :users, :through => :meals
end
