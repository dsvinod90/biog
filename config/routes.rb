Rails.application.routes.draw do
	root 'welcome#index'
  resources :welcome, only: [:index] do
    collection do
      get :about_me
    end
  end
  resources :articles, path: '/blog/articles'
  devise_for :admin, controllers: {
        sessions: 'admin/sessions'
      }
end
