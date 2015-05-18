Rails.application.routes.draw do

  get 'advertisements/index'

  get 'advertisements/show'

  resources :posts, :advertisements

  get 'about' => 'welcome#about'

  #this is an implied hash - could be written as root({to: 'welcome#index'})
  root to: 'welcome#index' 

end
