Rails.application.routes.draw do
  root 'home#index'
  get 'report/subjects', to: 'reports#index'
  devise_for :users
  resources :students do
    get :subjects
  end
  resources :teachers do
  	get :subjects
  end
  
  
end
