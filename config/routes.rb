Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/welcome' => 'pages#welcome'
  #this will run the welcome instance inside the pages controller
  # the hash rocket defines the route


  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

  get '/kitten/:size' => 'pages#kitten'
  #we are defining a dynamic route with anything going for size
  #whatever is there will be stored in the params hash under the size key
  get '/kittens/:size' => 'pages#kittens'

  get '/secrets/:magic_word' => 'pages#secrets'

end
