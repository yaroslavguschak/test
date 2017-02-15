class Worker < ApplicationRecord
  belongs_to :department
  has_many :cars
end
