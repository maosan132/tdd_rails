require 'rails_helper'

RSpec.describe ('updating a player') do
  it "updates the player and redirects to root page" do
    player = Player.create(first_name: 'Mauricio', last_name: 'Santos')

    visit root_path
    expect(page).to have_text('Mauricio')
    click_link 'Edit Profile'
    fill_in 'First name', with: 'Jhon'
    click_button 'Update Player'
    expect(current_path).to eq(root_path)
    expect(page).not_to have_text('Mauricio')
    expect(page).to have_text('Jhon')
  end
  
end