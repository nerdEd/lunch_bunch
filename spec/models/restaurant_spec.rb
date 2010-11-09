require 'spec_helper'

describe Restaurant do
  it { should have_many(:outings) }
end
