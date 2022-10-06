Rails.application.routes.draw do
  resources :news
  # get 'news/index'
  # get 'news/new'
  # get 'news/show'
  # get 'news/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get     'home',           to: 'home#index',          as: 'homes'
  # get     'news',           to: 'news#index',         as: 'news' #link_to movies_path
  # get     'news/new',       to: 'news#new',           as: 'new_news'
  # post    'news',           to: 'news#create'
  # get     'news/:id',       to: 'news#show',          as: 'shows'
  # get     'news/:id/edit',  to: 'news#edit',          as: 'edit_news'
  # put     'news/:id',       to: 'news#update'
  # patch   'news/:id',       to: 'news#update'
  # delete  'news/:id',       to: 'news#delete'  
  
end