require 'rails_helper'

RSpec.describe 'create a new player' do
  before do
    visit players_new_path
  end

  it "creates a new player if validation passes" do
    fill_in 'First name', with: 'Lance'
    fill_in 'Last name', with: 'Roberson'
    click_button 'Create Player'
    expect(current_path).to eq(root_path)
  end

  it "does not create a new player if validation fails" do
    click_button 'Create Player'
    expect(current_path).to eq(players_new_path)
    expect(page).to have_text("First name")
    expect(page).to have_text("Last name")
  end
  
  
end