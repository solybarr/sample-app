Rails.application.routes.draw do

  #devise_for :users
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'

  get 'home', to: 'static_pages#landing_page'

  post 'static_pages/thank_you'

  #get 'static_pages/index'
  root 'static_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
