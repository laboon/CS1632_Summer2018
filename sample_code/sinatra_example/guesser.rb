require 'sinatra'
require 'sinatra/reloader'

# The secret number to guess.  This will start as an invalid value
number = -1

# Generate a secret number from 1 to 100
def secret_num
  rand(1..100)
end

# Determine the message to send depending on whether the guess is higher,
# lower, or the same as the secret number
def determine_msg(number, guess)
  if guess == number
    "That's exactly right!"
  elsif guess > number
    "That's too high!"
  else
    "That's too low!"
  end
end

# If a GET request comes in at /, do the following.

get '/' do
  # Get the parameter named guess and store it in pg
  pg = params['guess']
  # Setting these variables here so that they are accessible
  # outside the conditional
  guess = -1
  got_it = false
  # If there was no guess parameter, this is a brand new game.
  # Generate a secret number and set the guess to nil.
  if pg.nil?
    number = secret_num
    guess = nil
  else
    guess = pg.to_i
    msg = determine_msg number, guess
    got_it = guess == number
  end
  erb :index, :locals => { number: number, guess: guess, got_it: got_it, msg: msg }
end
