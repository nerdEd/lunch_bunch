require 'spec_helper'

describe Restaurant do
  let!(:restaurant) { Fabricate(:restaurant) }

  it { should validate_presence_of :street }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should have_many :outings }

  describe '#address' do
    let!(:restaurant) do
      Fabricate(:restaurant) do
        name "Delicomb"
        street "1131 3rd Street North"
        city "Jacksonville Beach"
        state "FL"
      end
    end

    it "should return a comma-separated address" do
      restaurant.address.should == "1131 3rd Street North, Jacksonville Beach, FL"
    end

  end

end
