Rails.application.routes.draw do
  get     'login'     => 'sessions#new'
  post    'login'     => 'sessions#create'
  delete  'logout'    => 'sessions#destroy'
  get     'signup'    => 'user#new'
  post    'signup'    => 'user#create'
  resources :user
end
