class Expense < ApplicationRecord
  belongs_to :user
  has_many :catagory_expenses, dependent: :destroy
  has_many :catagories, through: :catagory_expenses

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
