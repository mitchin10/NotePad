Rails.application.routes.draw do
  get 'todo_lists/edit'

  get 'todo_lists/create'

  root 'notes#index'

  resources :notes do
    resources :todo_lists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
