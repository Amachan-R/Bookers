Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :homes
  resources :books

  root to: 'homes#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'booklist'
  get 'books/:id/edit' => 'books#edit'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books' => 'books#destroy'
end
