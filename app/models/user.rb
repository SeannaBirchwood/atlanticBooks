class User < ApplicationRecord

  has_secure_password

  has_one :wishlist

  attr_accessor :email, :username, :role, :password, :password_confirmation #:is_admin, :activation_code,

  validates :username, :presence => true
  validates :email, :presence => true

  # Got this code from tutorial. Commented out sections are unnecessary right now
  # but could be necessary later.
  # Url: http://larsgebhardt.de/user-authentication-with-ruby-on-rails-rspec-and-capybara/

  # before_create :create_activation_code
  # after_create :send_confirmation_email
  #
  # def send_confirmation_email
  #   UserMailer.confirmation_email(self).deliver
  # end
  #
  # def create_activation_code
  #   self.activation_code = random_string(length=10)
  # end
  #
  # def random_string(length=10)
  #   (1..length).collect {alphanumeric_characters.sample}.join
  # end
  #
  # def alphanumeric_characters
  #   ("a".."z").to_a + ("0".."9").to_a
  # end
  #
  # def is_active?
  #   self.activation_code == nil
  # end

end
