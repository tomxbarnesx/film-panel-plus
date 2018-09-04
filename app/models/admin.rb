class Admin < ApplicationRecord
    has_one :user, as: :userable, dependent: :destroy
    accepts_nested_attributes_for :user

    validate :salary_level,

    def salary_level
        if salary.present? && salary <= 0
          errors.add(:salary, "has to be more than 0.")
        end
      end

end
