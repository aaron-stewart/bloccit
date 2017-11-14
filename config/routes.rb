Rails.application.routes.draw do


  resources :advertisments
  resources :questions
  resources :topics do
    resources :posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
