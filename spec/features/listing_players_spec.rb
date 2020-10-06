require 'rails_helper'

RSpec.describe 'list players' do
  it 'displays the first and last names of all players saved' do
    player1 = Player.create(first_name: 'Mauricio', last_name: 'Santos')
    player2 = Player.create(first_name: 'Cris', last_name: 'Santos')

    #visit '/'
    visit root_path

    expect(page).to have_text('mauricio')
    expect(page).to have_text('santos')
    expect(page).to have_text('Cris')
    expect(page).to have_text('santos')

    expect(page).to have_link('New Player')
  end
end