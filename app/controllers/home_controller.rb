class HomeController < ApplicationController
  
  def index
   require 'net/http'
   require 'json'
   
   @url = 'https://api.coinmarketcap.com/v2/ticker/'
   @uri = URI(@url)
   @response = Net::HTTP.get(@uri)
   @coins = JSON.parse(@response)
   @coins = @coins["data"]
   
   @my_coins = ["BTC", "XRP", "ADA", "XLM", "STEEM"]
   
  end
  
  def lookup
    
   require 'net/http'
   require 'json'
   
   @url = 'https://api.coinmarketcap.com/v2/ticker/'
   @uri = URI(@url)
   @response = Net::HTTP.get(@uri)
   @lookup_coins = JSON.parse(@response)
   @lookup_coins = @lookup_coins["data"]
    
    # Get the sym from the input field
    @symbol = params[:sym]
    if @symbol 
      @symbol = @symbol.upcase
    end
    
    # if @symbol == ""
    #   @symbol = "You need to enter a Crypto Symbol"
    # end
    
    # @error = "That symbol does not exsist"
    
  end
  
    
  def about
    @about = "My name is Antoine Green"
  end
  
  
end
