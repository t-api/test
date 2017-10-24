class UsersController < ApplicationController

def index
    @user = User.new
end
  
def t_user
    require 'twitter'
    
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "hXhSpI3iRxzWh6XIB0osPhLT4"
      config.consumer_secret = "weuWl4LyFVuf10sWoLCRTJZynsYH2p7QTwEZ9sDohEcNyldvoT"
      config.access_token = "838731011865235456-na2d2yEiPUnRFfU6f3jo9QEr0maMWD0"
      config.access_token_secret = "9rr3sxGGs2dS8C1jV8XDPGiaXv45ywOv11I8Q9h0IAfmQ"
    end

    @user = User.new(name: client.user.name)
end

end
