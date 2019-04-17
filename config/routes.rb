Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tree
      resources :groups
      resources :members
      resources :posts
      resources :users
      resources :nonusers
    end
  end
end
