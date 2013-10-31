require 'spec_helper'

describe Goal do
	it {should belong_to(:section)}
	it {should belong_to(:wheel)}
end