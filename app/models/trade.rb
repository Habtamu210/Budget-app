class Trade < ApplicationRecord
  has_and_belongs_to_many :trades
  belongs_to :user
end
