require 'rails_helper'

describe Exercise do
  it { should validate_presence_of :activity }
  it { should validate_presence_of :calories_burned }
  it { should have_many :workouts }
  it { should have_many(:users).through(:workouts) }
end
