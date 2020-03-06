Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :doodles
  end
  post 'auth/login', to: 'authentication#authenticate'
  post 'register', to: 'users#create'
  get 'doodles', to: 'doodles#public_doodles'
  get 'doodles/:category_id', to: 'doodles#public_doodles_by_category'
  get 'user/doodles', to: 'doodles#private_doodles'

end