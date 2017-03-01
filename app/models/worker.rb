class Worker < ApplicationRecord
  belongs_to :department
  has_and_belongs_to_many :cars, :join_table => :booking 
end
