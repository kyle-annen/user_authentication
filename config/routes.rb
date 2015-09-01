Rails.application.routes.draw do
  root 'posts#show'
  get     'login'     => 'sessions#new'
  post    'login'     => 'sessions#create'
  delete  'logout'    => 'sessions#destroy'
  get     'signup'    => 'user#new'
  post    'signup'    => 'user#create'
  get     'newpost'   => 'posts#new'
  post    'newpost'   => 'posts#create'
  resources :user
end
