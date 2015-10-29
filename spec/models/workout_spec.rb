require 'rails_helper'

describe Workout do
  it { should belong_to :exercise }
  it { should belong_to :user }
end
