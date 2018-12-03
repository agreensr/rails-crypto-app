class HomeController < ApplicationController
  def index
    @hello = "Hey from the controller"
  end
    
  def about
    @about = "My name is Antoine Green"
  end
  
end
