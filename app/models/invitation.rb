class Invitation < ActiveRecord::Base
  #validates :email, :presence => true, :format => { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }, allow_blank: true
  validates_presence_of :email
  validates_format_of :email,  :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, allow_blank: true

end
