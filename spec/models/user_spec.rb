require 'rails_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
  it { should have_many :meals }
  it { should have_many :workouts }
  it { should have_many(:foods).through(:meals) }
  it { should have_many(:exercises).through(:workouts) }
end
