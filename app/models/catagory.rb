class Catagory < ApplicationRecord
  belongs_to :user
  has_many :catagory_expenses, dependent: :destroy
  has_many :expenses, through: :catagory_expenses
end
