Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: "tasks#new", as: :new

  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  post "tasks", to: "tasks#create"

  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"

  get 'tasks/:id', to: 'tasks#show', as: :task






  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # post "restaurants", to: "restaurants#create"
  # patch "restaurants/:id", to: "restaurants#update"
  # delete "restaurants/:id", to: "restaurants#destroy"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # resources :restaurants #, only: [:index, :show, :edit, :new, :update, :create]
end
