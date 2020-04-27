class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # before_action :authenticate_user!

  # user_signed_in?
  
  # current_user
  
  # user_session

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
