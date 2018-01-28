Rails.application.routes.draw do
	get 'welcome/home', to: 'welcome#home'
  root 'welcome#home'
  get 'welcome/about', to: 'welcome#about'
  get 'download_resume', to: 'downloads#download_resume'
  resources :articles, path: '/blog/articles'
  namespace :api do
    resources :news, only: [:index]
  end 
  devise_for :admin, controllers: {
    sessions: 'admin/sessions'
  }
end
