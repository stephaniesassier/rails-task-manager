Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #list the tasks
  get 'tasks', to: 'tasks#index'

  #add 1 task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  #list 1 task
  get 'tasks/:id', to: 'tasks#show', as: :task

  #edit 1 task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  #remove 1 task
  delete 'tasks/:id', to: 'tasks#destroy'

end
