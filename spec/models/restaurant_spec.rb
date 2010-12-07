require 'spec_helper'

describe Restaurant do
  let!(:restaurant) { Fabricate(:restaurant) }

  it { should validate_presence_of :street }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should have_many :outings }
end
