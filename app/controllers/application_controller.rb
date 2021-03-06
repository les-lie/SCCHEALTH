class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :checkstatus
  
  protected
    def formatted_db(date)
      date.strftime("%Y-%m-%d")
    end
  
  private
  def checkstatus
       
    if @current_user
     
     #  @user = User.find(current_user[:id])
      if @current_user.status==false
          sign_out(current_user)
#          
        #redirect_to signout_path, :method=>:post
       #redirect_to 'devise/sessions#new',  alert: 'Your account is currently deactivated.'
      end
    end
  end
end
