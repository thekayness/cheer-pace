Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main_feed#index', as: 'main'
  devise_for :users, controllers: {passwords: 'users/passwords', registrations: 'users/registrations', sessions: 'users/sessions' }
end
