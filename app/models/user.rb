class User < ApplicationRecord
 
  # , :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable

         has_one :profile,dependent: :destroy
         
end
