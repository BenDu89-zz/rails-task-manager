Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "tasks",          to: "tasks#index"
  get    "tasks/new",      to: "tasks#new", as: "new"
  post   "tasks",          to: "tasks#create"
  # NB: The `show` route needs to be *after* `new` route.
  delete "tasks/:id",      to: "tasks#destroy", as: "destroy"
  get    "tasks/:id",      to: "tasks#show", as: "task"
  get    "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch  "tasks/:id",      to: "tasks#update", as: "update"

end
