class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :expenses, dependent: :destroy
  has_many :catagories, dependent: :destroy

  validates :name, presence: true
end
