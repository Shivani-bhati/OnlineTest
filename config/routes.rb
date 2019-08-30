 Rails.application.routes.draw do
 
  # resources :answer_options
  get 'test/:id' => "tests#paper", as: :paper
  post 'test/:id'=> "tests#submit", as: :submit
  get "/score/test/:id" => "tests#score", as: :score
  resources :answers
  devise_for :users
  resources :tests
  root "tests#index"


  namespace :admin do
    resources :tests
    resources :questions
  end

  get "users/results" => "admin/tests#user", as: :users
  get "user/:id/result" => "admin/tests#user_result", as: :user_result
  get "/test/:id/result" => "tests#result", as: :result
    
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/*args"=>"tests#undef"

end

