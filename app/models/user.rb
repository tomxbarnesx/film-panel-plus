class User < ApplicationRecord
  belongs_to :userable, polymorphic:true, optional:true
  has_many :enrollments
  has_many :cohorts, through: :enrollments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :validate_18_to_150_date
  
  def validate_18_to_150_date
    # make sure dated_on isn't more than five years in the past or future
    self.errors.add(:birthdate, "is not valid") unless ((150.years.ago)..(18.years.ago)).include?(self.birthdate)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
