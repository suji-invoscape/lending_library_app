class MarkAsPaidController < ApplicationController

	def new
		if @user.paid?

 redirect_to new_mark_as_paid
      else
        render :action => 'new'
      end
    
	end

end
