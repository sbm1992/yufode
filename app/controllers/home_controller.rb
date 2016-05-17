class HomeController < ApplicationController
  def index
    @food_all = Food.all
  end
  
  def upload
    
  end
  
  def write
    Food.create(title: params[:name], img: params[:img], comment: params[:content])
    redirect_to '/'
  end
  
  def detail
     @reply1 = Food.all
     @reply = Food.find(params[:id])
  end
  
  def replys
    Connect.create(dmsg: params[:msg], food_id: params[:tv_id])
    redirect_to '/'
  end
end
