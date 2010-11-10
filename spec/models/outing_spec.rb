require 'spec_helper'

describe Outing do
  it { should belong_to(:restaurant) }
  it { should belong_to(:user) }

  context "validations" do
    context "when an outing already exists for a restaurant" do
      subject do
        outing_1 = Outing.new :restaurant_id => 2
        outing_1.save
        outing_2 = Outing.new :restaurant_id => 2
        outing_2
      end

      it { should_not be_valid }
    end
  end
end
