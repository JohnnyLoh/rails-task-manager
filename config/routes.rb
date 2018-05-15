Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read All
  get "tasks", to: "tasks#index"

  # CREATE
    # Create new Task - FORM
  get "tasks/new", to: "tasks#new", as: :newtask
    # Post new Task
  post "tasks", to: "tasks#create"

  # Read one
  get "tasks/:id", to: "tasks#show", as: :task

  # DELETE
  delete "tasks/:id",      to: "tasks#destroy"

  # UPDATE
  get    "tasks/:id/edit", to: "tasks#edit", as: :edittask
  patch  "tasks/:id",      to: "tasks#update"




end
