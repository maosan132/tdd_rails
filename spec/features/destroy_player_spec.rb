require 'rails_helper'

RSpec.describe "Destroy a player" do
  it "destroys the player correctly and redrects to root path" do
    player = Player.create(first_name: 'Mauri', last_name: 'Santis')
    visit root_path
    click_link 'Delete Player'
    expect(current_path).to eq(root_path)  
    expect(page).not_to have_text('Mauri')  
  end
  
  
end
