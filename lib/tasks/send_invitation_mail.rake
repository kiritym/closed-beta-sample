namespace :invitation do
  desc "send invitation mail to the selected registered users for closed beta"
  task send: :environment do
      emails = [ 'kirity714@gmail.com', 'kiritym@rssoftware.co.in', 'khusbum@rssoftware.co.in' ]
      emails.each do |e|
        @invitation = Invitation.find_by_email(e)
        if !@invitation.nil?
          UserMailer.invitation_email(@invitation).deliver_now
          print 'Email Sent to: '
          puts @invitation.email
        end
      end
    end
end
