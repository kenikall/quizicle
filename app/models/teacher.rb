require 'bcrypt'

class Teacher < ActiveRecord::Base
  include BCrypt

  has_many :classrooms

  validates :last_name, :email, :password_hash, :state, presence: true

  def full_name
    @first_name+ " " +@lastname
  end

  def display_name
    @title ? @title+ " " + @lastname : @lastname
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(params = {})
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      return @user
    else
      return nil
    end
  end
end

