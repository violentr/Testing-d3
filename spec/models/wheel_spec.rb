require 'spec_helper'

describe Wheel do
	it {should have_and_belong_to_many(:answers)}
	it {should belong_to(:user)}
end