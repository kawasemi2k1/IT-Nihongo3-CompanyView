Rails.application.routes.draw do
  get 'admin/index'
  get 'user/index'
  get 'user/new'
  get 'user/show'
  get 'user/create'
  get 'user/edit'
  get 'user/update'
  get 'user/destroy'
  get 'static_pages/home'
  root 'static_pages#home'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
