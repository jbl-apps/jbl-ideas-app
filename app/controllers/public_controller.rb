class PublicController < ApplicationController
  
  skip_before_action :authenticate_user!
  
  #this will allow me to create the index view with it's own layout
  #layout false, only: :index
  
  def index
    
  end
  
  def scss
    
  end
  
end