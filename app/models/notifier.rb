class Notifier < ActionMailer::Base
  include SendGrid
  
  default :from => "notifications@subletsatpenn.com"

  # send a signup email to the user, pass in the user object that contains the user's email address
  def signup_email(user)
    mail( :to => user.email, :subject => "Thanks for signing up for Sublets at Penn!" )
  end
  
  def test_notification 
      mail(:to => "dlanger99@gmail.com", :subject => "mail from heroku") 
      puts("Sent mail from notifier")
	end 
  
end