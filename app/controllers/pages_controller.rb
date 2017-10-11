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

end

end
