require 'rails_helper'

RSpec.describe 'Editing player' do
  before do
    @player = Player.create(first_name: 'Mauricio', last_name: 'Santos')
  end
  
  it "displays a form prepopulated with the player values" do
    visit root_path
    click_link 'Edit Profile'
    expect(current_path).to eq('/players/#{player}.id)/edit') 

    expect(find_field('First name').value).to eq("#{@player.first_name}")
    expect(find_field('Last name').value).to eq("#{@player.last_name}")
  end
  
end