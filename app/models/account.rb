class Account < ApplicationRecord
  has_many :transcations
  validates :name, :balance, presence: true
end
