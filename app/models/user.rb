class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #not planning on using these this time :trackable, :rememberable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  has_many :courses
  has_many :tasks, through: :courses
  has_many :cheers

  def my_people_cheered
  	people = self.cheers.collect {|cheer| cheer.course.user}
  	people.flatten
  end

  def my_cheers_received
  	my_cheers = self.courses.collect{|course| course.cheers }
  	my_cheers.flatten
  end

end
