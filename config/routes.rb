Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "flats#index"

  resources :flats do 
    resources :reviews, only: [:create]
  end
end
