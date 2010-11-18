LunchBunch::Application.routes.draw do

  devise_for :users

  resources :restaurants, :only => [:index] do
    resources :outings, :only => [:show, :create, :new] do
      member do
        post :join
      end
    end
  end

  root :to => 'restaurants#index'
end
