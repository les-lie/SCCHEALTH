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
      Rails.logger.info('dfhsdf hfsfshd fsdhfshdfsdh fhsdbfhsdhf sdfjsdfb hsdfhsdhfsjdfvbsdhfsdjfsdfjsd fvsdfjsdfjvsd fsjdfvsdf sdjfsd f');
     
    if current_user
      Rails.logger.info(current_user[:status])
        Rails.logger.info('dfhsdf hfsfshd fsdhfshdfsdh fhsdbfhsdhf sdfjsdfb hsdfhsdhfsjdfvbsdhfsdjfsdfjsd fvsdfjsdfjvsd fsjdfvsdf sdjfsd f');
    #  @user = User.find(current_user[:id])
      if current_user[:status]==false
          Rails.logger.info('dfhsdf hfsfshd fsdhfshdfsdh fhsdbfhsdhf sdfjsdfb hsdfhsdhfsjdfvbsdhfsdjfsdfjsd fvsdfjsdfjvsd fsjdfvsdf sdjfsd f');
          sign_out(current_user)
#          
        #redirect_to signout_path, :method=>:post
       #redirect_to 'devise/sessions#new',  alert: 'Your account is currently deactivated.'
      end
    end
  end
end
