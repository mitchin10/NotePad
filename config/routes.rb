Rails.application.routes.draw do
  resources :note_categories
  # get 'todo_lists/edit'

  # get 'todo_lists/create'

  root 'notes#index'

  resources :notes do
    resources :todo_lists do
      member do
        patch :complete
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
