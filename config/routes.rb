Tech2me::Application.routes.draw do

  root to: 'questions#index'

  # get "/questions", to: "questions#index", as: :questions
  # post "/questions", to: "questions#create"
  # get "questions/new", to: "questions#new", as: :new_question

  # resources :questions, only: [:show]
  # resources :answers, only: [:create]

  resources :questions do
    resources :answers
  end

end

