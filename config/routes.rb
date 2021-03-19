Rails.application.routes.draw do
  get 'changes/:id', to: 'changes#changed', as: 'changed'
  get 'weathers/index'
  devise_for :users
 root to: "todos#index"
 resources :todos
 resources :events
 resources :diaries do
  collection do
    get 'search'
  end
end
end
