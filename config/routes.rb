Rails.application.routes.draw do
	resources :problems
	resources :tasks
  root 'home#index'
end
