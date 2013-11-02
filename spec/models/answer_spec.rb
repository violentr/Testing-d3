require 'spec_helper'

describe Answer do
	it {should have_and_belong_to_many(:wheel)}
end
