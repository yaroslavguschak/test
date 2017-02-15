class Department < ApplicationRecord
  has_many :workers, dependent: :destroy
  has_many :cars, through: :workers

  validates :department_name, presence: true,
                    length: { minimum: 3 }
  validates :description, presence: true,
                    length: { minimum: 5 }
end
