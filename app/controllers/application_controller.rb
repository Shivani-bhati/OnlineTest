class ApplicationController < ActionController::Base
    before_action :authenticate_user!

	private
	def require_admin
    unless current_user && current_user.admin
        redirect_to root_path, notice:"You are not admin!"
    end
  end


  def require_signin
   	unless current_user
   		flash[:notice]="User Successfully Deleted"
   		redirect_to new_sessions_path
    end
  end 

    
  def require_current_user
    unless current_user 
        redirect_to root_path
    end
  end
    
end
