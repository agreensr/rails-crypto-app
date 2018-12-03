Rails.application.routes.draw do
  get "home/about"
  get "home/lookup"
  # Lookup form route
  post "/home/lookup" => "home/lookup"
  root "home#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
