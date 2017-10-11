Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/welcome' => 'pages#welcome'
  #this will run the welcome instance inside the pages controller
  # the hash rocket defines the route


  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

end
