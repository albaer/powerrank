require 'rails_helper'

RSpec.describe Item, :type => :model do
  it { expect(FactoryGirl.build(:item)).to be_valid }
  it { expect(FactoryGirl.create(:item)).to be_valid }

  it { should belong_to :list }
end
