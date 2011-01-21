require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the FooHelper. For example:
#
# describe FooHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe RestaurantsHelper do

  describe '#map' do
    let!(:restaurant) do
      Fabricate(:restaurant) do
        name "Delicomb"
        street "1131 3rd Street North"
        city "Jacksonville Beach"
        state "FL"
      end
    end
    let(:map_image) do
      "<img alt=\"Delicomb\" class=\"map\" src=\"http://maps.google.com/maps/api/staticmap?markers=1131%203rd%20Street%20North,%20Jacksonville%20Beach,%20FL&amp;format=jpg&amp;size=350x250&amp;sensor=false\" />"
    end

    subject { helper.map(restaurant) }
    it { should == map_image }
  end

end
