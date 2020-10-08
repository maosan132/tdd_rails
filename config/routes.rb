Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # get '/' => 'players#index'
  root 'users#index'

  resources :players  # replaces all 7 routes:
  #get 'players' => 'players#index'
  #get 'players/new' => 'players#new'
  #post 'players' => 'players#create'
  #get 'players/:id' => 'players#show', as: 'player'
  #get 'players/:id/edit' => 'players#edit', as: 'player_edit'
  #patch 'players/:id' => 'players#update'
  #delete 'players/:id' => 'players#destroy'

  resources :users, only: [:index, :create] 
  resources :sessions, only: [:create]
end
