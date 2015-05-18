Rails.application.routes.draw do

  resources :posts

  get 'about' => 'welcome#about'

  #this is an implied hash - could be written as root({to: 'welcome#index'})
  root to: 'welcome#index' 

end
