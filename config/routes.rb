Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "add_note", to: "notes#new"
  post "add_note", to: "notes#create"
  get "notes", to: "notes#index"
  get "notes/:id", to: "notes#show"
  delete "notes/:id", to: "notes#destroy"


  root "notes#index"
end
