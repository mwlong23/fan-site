Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries do
    resources :styles
  end

  resources :styles do
    resources :beers
  end

end
