class UsersController < ApplicationController
  def index
  end
  
  def home 
  end
  
  def show
    @user = User.find_by_id(params[:id])
    respond_to do |format|
      format.html { render "index"}
      format.xml  { render :xml => current_user }
    end
  end
  
  def help
  end
  
  def find
  end
end