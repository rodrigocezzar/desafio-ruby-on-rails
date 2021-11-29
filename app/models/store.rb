# frozen_string_literal: true

class Store < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }, uniqueness: true
  validates :owner, presence: true, length: { maximum: 15 }
  validates :balance, presence: true
end
