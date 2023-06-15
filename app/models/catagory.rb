class Catagory < ApplicationRecord
  belongs_to :user
  has_many :catagory_expenses, dependent: :destroy
  has_many :expenses, through: :catagory_expenses

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    expenses.sum(&:amount)
  end
end
