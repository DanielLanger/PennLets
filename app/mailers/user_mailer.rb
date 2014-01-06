class UserMailer < ActionMailer::Base
  include SendGrid
  
  default :from => "notifications@subletsatpenn.com"
 
  def welcome_email(user)
    @user = user
    @url  = "http://pennletsapp.herokuapp.com/users/sign_in"
    mail(:to => user.email, :subject => "Welcome to Sublets at Penn!")
  end
  
   def signup_email(user)
    mail( :to => user.email, :subject => "Thanks for signing up to Sublets At Penn!" )
  end
  
  def test_email
  	mail(:to => "dlanger99@gmail.com", :subject => "mail from heroku") 
 	puts("Sent mail from notifier")
  end
  
end
