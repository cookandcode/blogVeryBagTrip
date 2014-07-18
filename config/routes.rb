BlogVeryBagTrip::Application.routes.draw do
  
  resources :blogs, only: [:index, :show]

  namespace :admin do
    resources :blogs
  end

  root 'blogs#index'

end
