Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # GET localhost:3000/about
  #  get request path to the page - controller#action name
  #  verb "/path" to: "controller/action"
  # same way as below -> get("/about", { to: "pages#about" })

  # how to route to home without /home.. -> get '/', to: 'pages#home'
  root to: 'pages#home'
  get '/about', to: 'pages#about'

  get '/contact', to: 'pages#contact'
end
