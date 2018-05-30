require 'sinatra'
require 'sinatra/reloader'


# number = rand(101)

NUMBER = rand(100)
get '/' do
#erb :index, :locals => {:number => number,:message => 'Guess the number'}
def check_guess(number)

  guess = params["guess"].to_i

if guess - 5 > number
  erb :index, :locals => {:number => '_',:message => 'way too high'}

elsif guess + 5 < number
    erb :index, :locals => {:number => '_',:message => 'way too low'}

elsif guess > number
  erb :index, :locals => {:number => '_',:message => 'too high'}

elsif guess < number
  erb :index, :locals => {:number => '_',:message => 'too low'}

elsif guess == number
    erb :index, :locals => {:number => number,:message => 'You got it right'}
end
end
check_guess(NUMBER)
end
