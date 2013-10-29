require 'spec_helper'

describe Wheel do
	it {should have_many(:answers)}
	it {should belong_to(:user)}
end