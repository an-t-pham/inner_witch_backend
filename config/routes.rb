Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do 
       resources :cards, only: [:index]
         get '/random_card', to: 'cards#random_card', as: 'random_card'
         get '/random_cards', to: 'cards#random_cards', as: 'random_cards'

       resources :readings, only: [:create, :index]
       
    end
  end

end
