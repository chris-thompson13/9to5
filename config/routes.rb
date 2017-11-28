Rails.application.routes.draw do

  get 'jobs/index'

  get 'jobs/show'

  get 'jobs/new'

  get 'jobs/edit'

  get 'jobs/create'

  get 'jobs/destroy'

  devise_for :users
resources :boats
root 'boats#index'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
