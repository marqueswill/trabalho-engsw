Rails.application.routes.draw do
  get 'home/index'
  get 'layouts/page'
  get 'layouts/form_student'
  get 'layouts/importdata'
  # devise_for :users
  #resources :users

  devise_for :users, controllers: { registrations: 'users/registrations' },
  :path => 'users',
  :path_names => {
    :sign_in => 'login',
    :sign_up => 'register',
    :sign_out => 'logout',
    :password => 'recover-password',
    :confirmation => 'verification'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root :to => "home#index"

end
