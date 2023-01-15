Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resource :books
  post 'books' => 'books#create'
  get 'books/show'
  get 'books/index'
  get 'users/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/show'
  get 'users/edit'
  get 'homes/about' => 'about#new'
end
