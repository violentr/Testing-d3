require 'spec_helper'

  		describe 'wheel form' do
  			before(:each) do
    		load "#{Rails.root}/db/seeds.rb" 
  			end
			
			it 'should have a form for creating a wheel' do
				visit new_wheel_path
				expect(page).to have_content 'Create your wheel'	
			end	

			it 'should display a form' do
				visit new_wheel_path
				expect(page).to have_content 'Personal growth & development'	
			end	

			it 'should show the wheel with click on "create wheel" button'  do
				visit new_wheel_path			
					page.all(:css, '.question').each do |q|
						within q do
							choose 'Strongly agree'
						end
					end
				
				click_button 'Create Wheel'
				expect(page).to have_content 'Your personal wheel'	
			end	

			it 'should raise an error if the user has not selected an answer for every question'  do
				visit new_wheel_path			
				click_button 'Create Wheel'
				expect(page).to have_content 'Please fill out all the answers'	
			end	

		end



		# login / registration

		# describe 'wheel' do
		# 	it 'should display a wheel if the user is logged in' do
		# 		visit '/wheels/:id'
		# 		expect(page).to have_content 'Your personal wheel'	
		# 	end	
		# end

		# describe 'wheel' do
		# 	it 'should not be display if the user is logged out' do
		# 		visit '/wheels/:id'
		# 		expect(page).to have_content 'Your personal wheel'	
		# 	end	
		# end



