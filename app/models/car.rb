class Car < ApplicationRecord
  has_and_belongs_to_many :workers, :join_table => :booking
end
