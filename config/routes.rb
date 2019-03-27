Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }
  root "home#index"

  resources :users

  resources :playlists

  resources :songs do
    get :playlistadd, on: :member
    get :setplaylist, on: :member
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
