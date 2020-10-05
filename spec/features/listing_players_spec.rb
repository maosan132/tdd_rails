require 'rails_helper'

Rspec.describe 'list players' do
  it 'displays the first and last names of all players saved' do
    player1 = Player.create(first_name: 'Eduardo', last_name: 'Baik')
    player2 = Player.create(first_name: 'Cris', last_name: 'Burns')

    visits '/'
  end
end