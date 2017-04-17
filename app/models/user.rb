#File name:user.rb
#Class name: User
#Description: Validates the requeriments made by the controller and saves in the
#            data base
class User < ApplicationRecord
  has_one :parent
  has_one :alumn

  has_secure_password
  validates :password, presence:true,
                        length: { minimum: 8}

  before_create{
    generate_token(:authorization_token)
  }

  private
  def generate_token(column)
    begin
      self[column]= SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end