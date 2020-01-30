Rails.application.routes.draw do
  devise_for :users
  resources :dashboards

devise_scope :user do
		root to: 'devise/sessions#new'
		get 'login', to: 'devise/sessions#new'
		get 'logout', to: 'devise/sessions#destroy'
	end

end
