Rails.application.routes.draw do

  root to: 'homes#top'
  get 'home/about' => "homes#about"

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only:[:new, :index, :create, :show ,:edit, :update, :destroy]
  resources :users, only:[:show, :edit, :index, :update]
end
