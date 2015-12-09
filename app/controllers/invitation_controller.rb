class InvitationController < ApplicationController
  layout "application"
  def new
    puts ENV['RAILS_ENV']
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new
    email = params[:invitation][:email]
    if Invitation.find_by(email: email).nil?
      @invitation.email = email
      if @invitation.save
        UserMailer.invitation_email(@invitation).deliver_now
      end
    else
     @invitation.errors[:email] = "is already used for private beta registration"
    end
  end


end
