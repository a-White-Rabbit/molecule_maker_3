Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  root    'pages#index', as: 'home'

  # PAGES
  get     'about' =>  'pages#about'

  # COMMENTS / Rails gen routes
  # get 'pages/index'
  # get 'pages/about'

end
