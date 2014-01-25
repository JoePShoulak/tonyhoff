class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(params[:user])
    @user.email.downcase!
        
    if @user.save
      flash[:notice] = 'Successfully subscribed!'
      redirect_to @user
    else
      flash[:notice] = "Email #{@user.errors.messages[:email][0]}."
      redirect_to '/'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
end
