Rails.application.routes.draw do
  get 'calculator/main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
  post "/articles/:id", to: "articles#upsert"

  # Defines the root path route ("/")
  # root "posts#index"
  root :to => "blog#index"
  post "/create" => "blog#create"
  get "/update/:postId" => "blog#update"
  post "/updateAction" => "blog#updateAction"
  get "/delete/:postId" => "blog#delete"

  get "/home" => "blog#index"
  get "/test" => "blog#test"
  get "/result" => "calculator#result"
  post"/result" => "calculator#result"
  get "/plus/:num1/:num2" => "calculator#plus"

end
