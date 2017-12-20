Rails.application.routes.draw do
	root 'welcome#index'
  resources :welcome, only: [:index] do
    collection do
      get :about_me
    end
  end
end
