class UsersController < ApplicationController

  def new
    @user = User.new 
  end 

  def create 
    @user = User.create(username: params[:username],
                        password: params[:password])
    redirect_to books_path
  end 
  
  
end
