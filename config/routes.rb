Rails.application.routes.draw do
devise_for :users
resources :boats
resources :jobs
root 'boats#index'
root 'jobs#index' # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
