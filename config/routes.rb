Rails.application.routes.draw do
	get 'welcome/home', to: 'welcome#home'
	get 'welcome/about', to: 'welcome#about'
  root 'welcome#home'
  resources :articles, path: '/blog/articles'
  namespace :api do
    resources :news, only: [:index]
  end 
  
  devise_for :admin, controllers: {
    sessions: 'admin/sessions'
  }
end
