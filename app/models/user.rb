require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :solutions

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end
end
