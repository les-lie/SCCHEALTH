class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :changepassword, :updatepassword]

  def index
    # @users = User.all
    @users=User.all.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end
  
  def changestatus
    @users = User.find(params[:id])
    Rails.logger.info(@users[:status])
    if @users[:status]==false
      status = true;
      message = 'User ( '+@users.email+' ) account activated'
    else
      status = false;
      message = 'User ( '+@users.email+' ) account deactivated'
    end
    if User.where(:id => params[:id]).update_all(:status => status)
      redirect_to users_path, :notice => message
    else
      redirect_to users_path, :alert => 'Unable to process, please try again after sometime'
    end
  end
  
  def edit
  end
  
  def changepassword
  end
  
  def updatepassword
    respond_to do |format|
      Rails.logger.info(changepassword)
      if @user.update(changepassword)
        format.html { redirect_to users_path(@user), notice: 'Password was successfully updated.' }
      else
        format.html { render action: 'changepassword' }
      end
    end
  end
  
  def update
    respond_to do |format|
      Rails.logger.info(user_params)
      if @user.update(user_params)
        format.html { redirect_to users_path(@user), notice: 'User was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end
  
  private
    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:name, :email, :status, :isadmin)
    end
    
     def changepassword
      params.require(:user).permit(:password, :password_confirmation)
    end
end
