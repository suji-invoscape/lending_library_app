class User < ActiveRecord::Base
  has_and_belongs_to_many :books
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  
  attr_accessible :name, :email, :password, :password_confirmation, :mobile, :remember_me, :address, :admin, :paid

  after_create :send_registration_email

  private
  def send_registration_email
  	UserMailer.registration_confirmation(self).deliver
  end
  
end
