class User < ActiveRecord::Base

  # require the email field
  validates :email, :presence => true

  # encrypt and confirm our password field
  has_secure_password

  # require the password confirmation field 
  # if we've filled out the password field
  validates :password_confirmation, :presence => true, :if => :password

end