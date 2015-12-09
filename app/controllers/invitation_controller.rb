class InvitationController < ApplicationController
  layout "application"
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new
    email = params[:invitation][:email]
    if Invitation.find_by(email: email).nil?
      @invitation.email = email
      @invitation.save
    else
     @invitation.errors[:email] = "is already used for private beta registration"
    end
  end

end
