Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "like", to: "posts#downvote"
    end
  end

  root 'posts#index'
end
