Rails.application.routes.draw do
  # remove lines 3 to 16, replace with line 16
  # 1.1 read
  get 'tasks', to: 'tasks#index'
  # 2.1 create
  get 'tasks/new', to: 'tasks#new', as: :task_create
  # 1.2 read 1
  get 'tasks/:id', to: 'tasks#show', as: :task
  # 2.2 create
  post 'tasks', to: 'tasks#create'
  # 3.1 edit @ update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  # 3.2 update the edited version || add prefix
  patch 'tasks/:id', to: 'tasks#update', as: :task_update
  # 4.1 delete
  delete 'tasks/:id', to: 'tasks#destroy'
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"
