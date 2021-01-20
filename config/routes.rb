Rails.application.routes.draw do
  resources :flashcards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, path: '/', constraints: {subdomain: 'api'} do

  end
end
