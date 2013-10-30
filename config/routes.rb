Tech2me::Application.routes.draw do

  resources :questions, :only => [:index]

  root to: 'questions#index'

end
