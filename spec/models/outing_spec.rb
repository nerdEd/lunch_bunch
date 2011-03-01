require 'spec_helper'

describe Outing do
  let(:restaurant) { Fabricate(:restaurant) }

  it { should belong_to(:restaurant) }
  it { should belong_to(:user) }

  context "validations" do

    context "when a previous restaurant outing started in the past" do
      let!(:outing_1) { Fabricate(:outing, :event_date => Date.yesterday, :restaurant => restaurant) }
      let(:outing_2) { Fabricate(:outing, :restaurant => restaurant) }

      specify { outing_2.should have(0).errors }
    end

    context "when a previous restaurant outing started today" do
      let!(:outing_1) { Fabricate(:outing, :restaurant => restaurant) }
      let(:outing_2) { Fabricate.build(:outing, :restaurant => restaurant) }

      specify { outing_2.should_not be_valid }
    end

  end

  describe ".today" do
    let!(:outing_1) { Fabricate(:outing, :event_date => Date.yesterday, :restaurant => restaurant) }
    let(:outing_2) { Fabricate(:outing, :restaurant => restaurant) }
    specify { Outing.today.should == [outing_2] }
  end
end
