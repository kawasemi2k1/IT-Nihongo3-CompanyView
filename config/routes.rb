Rails.application.routes.draw do
  resources :companies_reviews
  get 'admin/index'
  get 'user/index'
  get 'user/show'
  get 'user/edit'
  put 'user/update'
  get 'user/destroy'
  get 'static_pages/home'
  root 'static_pages#home'
  resources :companies
  devise_for :users do
      get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
