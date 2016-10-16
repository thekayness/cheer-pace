class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #not planning on using these this time :trackable, :rememberable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  has_many :my_classes
  has_many :tasks, through: :my_classes
  has_many :cheers

  def people_cheered
  	people = self.cheers.collect {|cheer| cheer.my_class.user}
  	people.flatten
  end


end
