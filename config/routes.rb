LunchBunch::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :restaurants, :only => [:index, :create, :new] do
    resources :outings, :only => [:show, :create, :new] do
      member do
        post :join
        post :leave
      end
    end
  end

  root :to => 'restaurants#index'
end
