require 'rails_helper'

RSpec.describe 'list players' do
  it 'displays the first and last names of all players saved' do
    player1 = Player.create(first_name: 'Eduardo', last_name: 'Baik')
    player2 = Player.create(first_name: 'Cris', last_name: 'Burns')

    #visit '/'
    visit root_path

    expect(page).to have_text('Eduardo')
    expect(page).to have_text('Baik')
    expect(page).to have_text('Cris')
    expect(page).to have_text('Burns')

    expect(page).to have_link('New Player')
  end
end