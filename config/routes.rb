Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:update]
  
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  get 'about' => 'welcome#about'

  #this is an implied hash - could be written as root({to: 'welcome#index'})
  root to: 'welcome#index' 

end
