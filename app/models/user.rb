class User < ApplicationRecord
  has_many :categories
  has_many :trades, foreign_key: 'author_id', class_name: 'Trade', dependent: :destroy
end
