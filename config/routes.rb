Rails.application.routes.draw do
  get "/teachers", to: "teachers#index", as: "teachers"
  get "/teachers/new", to: "teachers#new", as: "new_teacher"
  get "/teachers/:id/edit", to: "teachers#edit", as: "edit_teacher"
  get "/teachers/:id", to: "teachers#show", as: "teacher"
  post "/teachers", to: "teachers#create"
  patch "/teachers/:id", to: "teachers#update"
  delete "/teachers/:id", to: "teachers#delete"

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
