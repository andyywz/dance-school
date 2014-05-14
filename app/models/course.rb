class Course < ActiveRecord::Base
  attr_accessible :dance_style, :description, :instructor, :name, :price, :venue, :date, :time
  
  has_many :enrollments
  has_many :students, through: :enrollments, source: :user, dependent: :destroy
  
  validates :name, :dance_style, presence: { message: "cannot be blank" }
  
  # TODO: Decide if this is necessary later
  # validates :name, uniqueness: { scope: [:date, :time, :instructor] }, message: "already exists" }
end
