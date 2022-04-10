Rails.application.routes.draw do

  root    'pages#index', as: 'home'

  # PAGES
  get     'about' =>  'pages#about'

  # COMMENTS / Rails gen routes
  # get 'pages/index'
  # get 'pages/about'

end
