LunchBunch::Application.routes.draw do

  devise_for :users

  resources :restaurants, :only => [:index] do
    resources :outings, :only => [:create, :new]
  end

  root :to => 'restaurants#index'
end
