Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main_feed#index', as: 'main'
  devise_for :users, 	controllers: {registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :courses, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
  	resources :tasks, only: [:index, :edit, :update, :destroy]
  	resources :cheers, only: [:new, :create, :destroy]
  end
end
