class UserMailer < ApplicationMailer
  default from: 'donotreply@rssoftware.co.in'

  def invitation_email(invitation)
    email_from_with_name = "Closed Beta Sample App <donotreply@rssoftware.co.in>"
    @url = 'http://localhost:3000/users/sign_up?token=' + invitation.token
    mail(from: email_from_with_name, to: invitation.email, subject: 'You are invited to register for Closed Beta Sample App')
  end
end
