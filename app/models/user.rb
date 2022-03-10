class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :name, presence: { message: 'You must fill in your name' }
  validates :email, presence: { message: 'email field cannot be left blank' }
  validates :phone_number, presence: { message: 'phone_number field cannot be left blank' }
  validates :password, presence: { message: 'password field cannot be left blank' }

  has_many :reservations
end
