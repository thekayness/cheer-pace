class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #not planning on using these this time :trackable, :rememberable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
end
