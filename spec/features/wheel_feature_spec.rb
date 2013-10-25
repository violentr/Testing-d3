require 'spec_helper'

	def create_wheel()
		Wheel.create()
	end

	describe 'the wheel' do

	before(:all) do
    	create_wheel 
  	end

		describe '/wheels' do
			it 'should display a wheel if the user is logged in' do
				visit '/wheels'
				expect(page).to have_content 'Your personal wheel'	
			end	
		end
	end	