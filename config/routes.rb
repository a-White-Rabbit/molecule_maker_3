Rails.application.routes.draw do

  root    'pages#index', as: 'home'

  # PAGES
  get     'about' =>  'pages#about'

  # USERS
  get     '/signup', to: 'users#new'
  post    '/signup', to: 'users#create'
  resources :users

  # SESSIONS
  get     '/login', to: 'sessions#new'
  post    '/login', to: 'sessions#create'
  get     '/logout', to: 'sessions#destroy'

  # COMMENTS / Rails gen routes
  # get 'pages/index'
  # get 'pages/about'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

end
