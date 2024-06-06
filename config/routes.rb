Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resources :tasks,only: [:index,:new,:create,:destroy] do
    resources :task_items,only: [:create,:destroy]
  end
end
