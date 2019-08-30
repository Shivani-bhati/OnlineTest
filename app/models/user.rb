class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable, timeout_in: 1.minutes
   has_many :answers
   has_many :results, dependent: :destroy
   validates :email, :password, presence: true

end
