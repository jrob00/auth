class User < ActiveRecord::Base
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create, :message => "Your passwords should match."
  validates_confirmation_of :password
  
  def encrypt_password
  	if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  
end