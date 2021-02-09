Rails.application.routes.draw do
  resources :pets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/pets", to: "pets#index"
  # get "/pets" => "pets#index"
  # get "/pets/:id", to: "pets#show"
  resources :dogs
  # get "/dogs"  -> index
  # get "/dogs/:id" -> show
  # post "/dogs" -> create
  # put/patch "/dogs/:id" -> update
  # delete "/dogs/:id" -> destroy
  resources :cats 
  resources :birds
 
end
