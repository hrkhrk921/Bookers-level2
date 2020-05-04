Rails.application.routes.draw do
root 'home#top'
get 'home/about', to: 'home#about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :index, :show]
end
