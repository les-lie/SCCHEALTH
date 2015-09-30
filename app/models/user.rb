class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
       

 

  #validates :password_confirmation, presence: true
  
  #validates :name, presence: true 
  #validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  #validates :status, presence: true
  #validates :isadmin, presence: true
  
  def self.navigators_for_select
    where(status: true).map {|user| [user.name, user.id] }
  end
end
