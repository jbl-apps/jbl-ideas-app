class Public::DesignsController < ApplicationController
  
  skip_before_action :authenticate_user!
  
  layout 'designs'
  
  #this will allow me to create the index view with it's own layout
  #layout false, only: :index
  
  def vesco
    
  end
  
end