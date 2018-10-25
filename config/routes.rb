Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/pokemon/capture', to: 'pokemons#capture', as: 'capture'
  patch '/pokemon/damage', to: 'pokemons#damage', as: 'damage'
  get '/pokemon/new', to: 'pokemons#new', as: 'new'
  post '/pokemon/create_poke', to: 'pokemons#create_poke',  as: 'create_poke'
end
