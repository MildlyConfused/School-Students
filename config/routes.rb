Rails.application.routes.draw do
  get "/schools", to: "schools#index", as: "schools"
  get "/schools/:id", to: "schools#show", as: "school"

  get "/support", to: "support#contact"
  post "/support", to: "support#contacted"

  get "/students", to: "students#index", as: "students"
  get "/students/new", to: "students#new", as: "new_student"
  get "/students/:id/edit", to: "students#edit", as: "edit_student"
  get "/students/:id", to: "students#show", as: "student"
  post "/students", to: "students#create"
  delete "/students/:id", to: "students#delete"
  patch "/students/:id", to: "students#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
