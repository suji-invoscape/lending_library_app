class UserMailer < ActionMailer::Base
default :from => "EasyRead Library"
 

 def registration_confirmation(user)


mail(:to => "#{user.email}", :subject => "Registered")
end

end 