Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  devise_for :users

  resources :profiles do
    resources :articles
    resources :donations
    resources :reviews
    resources :meetings
    resources :messages
  end
  resources :orders, only: [:show, :new, :create] do
    resources :payments, only: [:new, :create]
  end
  resources :charges
  root to: 'pages#home'
  get 'citywithdept', to: 'profiles#citywithdept'
  get 'dentistwithcity', to: 'profiles#dentistwithcity'
  get 'getSearch', to: 'profiles#getSearch'

  get 'excelcreator', to: 'profiles#excelcreator'

  get 'valider_article', to: 'articles#valider_article'
  get 'refuser_article', to: 'articles#refuser_article'
  get 'valider_review', to: 'reviews#valider_review'
  get 'refuser_review', to: 'reviews#refuser_review'
  get 'pages/about'
  get 'pages/formation'
  get 'pages/formation1'
  get 'pages/test'
  get 'pages/partnerships'
  get 'reviews/all'
  get 'articles/all'
  get 'pages/soins'
  get 'pages/all_articles_categories'
  get 'pages/make_a_donation'
  get 'pages/support_us'
  get 'pages/conversation'
  get 'pages/demande_rdv'
  get 'pages/conversationitem'

  match '/contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
