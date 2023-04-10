Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/groceries" => "groceries#index"
  get "/groceries/:id" => "groceries#show"
  post "/groceries" => "products#create"
  patch "/groceries/:id" => "groceries#update"
  delete "groceries/:id" => "groceries#destroy"
end
