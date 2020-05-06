Rails.application.routes.draw do
root 'home#top'
get 'home/about', to: 'home#about'
#ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :index, :show]
end
