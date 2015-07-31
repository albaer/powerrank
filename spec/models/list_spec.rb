require 'rails_helper'

RSpec.describe List, :type => :model do
  it { expect(FactoryGirl.build(:list)).to be_valid }
  it { expect(FactoryGirl.create(:list)).to be_valid }

  it { should have_many :items }
end
