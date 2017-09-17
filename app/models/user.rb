class User < ActiveRecord::Base
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_presence_of :email, :full_name, :location, :password
  validates_confirmation_of :password
  validates_uniqueness_of :email

  validate :email

  private

  validate do
    errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
  end
end
