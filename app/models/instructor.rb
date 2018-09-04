class Instructor < ApplicationRecord
    has_one :user, as: :userable, dependent: :destroy

    validate :salary_level

    def salary_level
        if salary.present? && salary < 0
          errors.add(:salary, "has to be more than 0.")
        end
      end
end