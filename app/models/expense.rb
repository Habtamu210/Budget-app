class Expense < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, dependent: :destroy
  has_many :catagories, through: :catagory_expenses
end
