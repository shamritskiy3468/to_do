Rails.application.routes.draw do
  resources :problems do
    resources :tasks
  end
  root 'problems#index'
end
