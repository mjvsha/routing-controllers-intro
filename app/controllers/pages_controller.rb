class PagesController < ApplicationController


#this controller has the sae name as the app/views/pages subdirectory
#rails by default will look for the erb files that match its own name in the app subdirectory
#therefore naming is important


def welcome
#with nothing inside, this method will automatically render the page associated with is name
#BUT, i can override this with the render method

@header = "WELCOME!!!!!!"
end


def about
@header = "ABOUT, SON!!!!!!!!!!!"

end


def contest
@header = "WIN SHIT!!!!!!!!!!!"
flash[:notice] = "Too late to win shit amigo"
redirect_to "/welcome"

end

def kitten
  kitten_size_url
end


def kittens

  kitten_size_url

end

#to respect DRY, we need to move the common code into one method and just have the kittens and kittenmethods call it

def kitten_size_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"

end

def secrets
  if params[:magic_word] == "ilovedogs"
  else
    flash[:alert] ="nope"
    redirect_to '/welcome'
  end

end



end
