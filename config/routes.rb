Rails.application.routes.draw do
  devise_for :users
  get 'todos/index'
 root to: "todos#index"
 resources :todos
end
