class Invitation < ActiveRecord::Base
  #validates :email, :presence => true, :format => { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }, allow_blank: true
  validates_presence_of :email
  validates_format_of :email,  :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, allow_blank: true

  before_create :generate_token

  private
  def generate_token
      self.token = Digest::SHA1.hexdigest([self.email, rand].join)
      #puts self.token
  end
end
