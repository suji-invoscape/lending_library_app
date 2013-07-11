class MarkAsPaidsController < ApplicationController

	def index

		 @user = User.find(params[:id])
		 @user.paid = true
		 if @user.save
        redirect_to users_path 																		
      end
  end

end
