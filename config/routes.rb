Rails.application.routes.draw do

  devise_for :users

  resources :topics do
    resources :posts, except: [:index] do
      resource :summary, except: [:show]
    end
  end



  # resource :summary

  get 'about' => 'welcome#about'

  #this is an implied hash - could be written as root({to: 'welcome#index'})
  root to: 'welcome#index' 

end
