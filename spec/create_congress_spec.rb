require 'spec_helper'

feature 'Creating a Congress' do
	scenario "can create a congree" do
		visit '/'

		click_link "New Congress"

		fill_in "Name", with: "Exit"
		fill_in "Description", with: "Exito..."
		fill_in "Begins", with: "Saturday"
		fill_in "Ends", with: "Sunday"
		fill_in "Place", with: "Tec"

		click_button 'Create Congress'

		expect(page).to have_content('The Congress has been created.')
	end
end