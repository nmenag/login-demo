class User < ActiveRecord::Base
  attr_accessor :password_confirmation
  has_secure_password
  
  validates :password_confirmation, presence: true, if: :password_digest_changed?
  validates_confirmation_of :password, if: :password_digest_changed?
end
