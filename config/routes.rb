Rails.application.routes.draw do
  root 'visitors#index' 

  get 'report/subjects', to: 'reports#subjects'
  devise_for :users
  resources :students do
    get :subjects
  end
  resources :teachers do
  	get :subjects
  end
  
  
end
