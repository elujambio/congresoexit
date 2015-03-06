require 'spec_helper'

feature 'Creating Congress' do
    before do
         visit '/'

        click_link 'New Congress'
    end
  scenario "can create a congress" do
   

    fill_in 'Name', with: 'Exit'
    fill_in 'Description', with: 'Éxito, Innovación y Tecnología'
    fill_in 'Begins', with: "Saturday"
    fill_in 'Ends', with: "Sunday"
    fill_in 'Place', with: "Tec de Monterrey"
    click_button 'Create Congress'

    expect(page).to have_content('The Congress has been created.')
  end

  scenario 'cannot create a congress' do
    

    click_button 'Create Congress'

    expect(page).to have_content("The Congress could not be saved")
      expect(page).to have_content("Name can't be blank")
  end
end