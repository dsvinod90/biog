Rails.application.routes.draw do
	root 'welcome#index'
  resources :articles, path: '/blog/articles'
  resources :welcome, only: [:index] do
    collection do
      get :about_me
    end
  end
  devise_for :admin, controllers: {
        sessions: 'admin/sessions'
      }
  namespace :api do
    resources :news, only: [:index]
  end 
end
