LunchBunch::Application.routes.draw do

  match '/auth/:provider/callback' => 'authentications#create'

  devise_for :users, :controllers => { :registrations => 'registrations' }

  resources :restaurants, :only => [:index, :create, :new] do
    resources :outings, :only => [:show, :create, :new] do
      member do
        post :join
        post :leave
      end
    end
  end
  resources :authentications

  root :to => 'restaurants#index'
end
