class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :first_name, :last_name, :username
  
  has_many :enrollments
  has_many :courses, through: :enrollments, dependent: :destroy
  
  validates :first_name, :last_name, :email, :username, presence: { message: "cannot be blank" }
  validates :email, :username, uniqueness: { case_sensitive: false, message: "already exists" }
  
  def name
    "#{first_name} #{last_name}"
  end
end
