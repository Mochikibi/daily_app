Rails.application.routes.draw do
  get 'todos/index'
 root to: "todos#index"
end
