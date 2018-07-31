Rails.application.routes.draw do
	resources :problems do
    member do
	    resources :tasks
    end
  end
  root 'problems#index'
end
