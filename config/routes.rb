LunchBunch::Application.routes.draw do

  resources :restaurants, :only => [:index] do
    resources :outings, :only => [:create, :new]
  end

  root :to => 'restaurants#index'
end
