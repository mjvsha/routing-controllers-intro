Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'pages#welcome'
  #this will run the welcome instance inside the pages controller
  # the hash rocket defines the route
  get '/welcome' => 'pages#welcome'

  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

  get '/kitten/:size' => 'pages#kitten', as: 'dude'
  #we are defining a dynamic route with anything going for size
  #whatever is there will be stored in the params hash under the size key
  get '/kittens/:size' => 'pages#kittens', as: 'kittens'

  get '/secrets/:magic_word' => 'pages#secrets'

end
