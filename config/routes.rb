Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :restaurants, only: [:index, :show, :new, :create] do
          resources :reviews, only: [ :new, :create, :show, :index]
    end
    root to: 'restaurants#index'
    # #list all restaurants GET
    #   get '/restaurants', to: 'restaurants#index'
    #
    # # see restaurant details GET
    #   get '/restaurant/:id', to: 'restaurant#show'
    # # create restaurant GET / POST
    #   get '/restaurants/new', to: 'restaurants#new'
    #   post '/restaurants', to: 'restaurants#create'
    # #create review of a restaurant GET / POST
    #   get 'review/new', to 'review#new'
    #   post 'review', to 'review#create'

    #
end
