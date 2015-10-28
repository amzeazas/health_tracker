class Food < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :calories, :presence => true
end
