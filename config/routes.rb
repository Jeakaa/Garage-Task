Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects

  resources :tasks
  get 'tasks/:id/up', as: :task_up, to: 'tasks#up'
  get 'tasks/:id/down', as: :task_down, to: 'tasks#down'

  root to: 'projects#index'
end
