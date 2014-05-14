class Course < ActiveRecord::Base
  attr_accessible :dance_style, :description, :instructor, :name, :price, :venue, :date, :time
  
  has_many :enrollments
  has_many :users, as: :students, through: :enrollments, dependent: :destroy
  
  validates :name, :dance_style, presence: { message: "cannot be blank" }
  # validates :name, uniqueness: { scope: [:date, :time, :instructor] }, message: "already exists" }
end
