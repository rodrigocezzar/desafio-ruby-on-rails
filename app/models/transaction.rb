# frozen_string_literal: true

class Transaction < ApplicationRecord
  validates :payment_type, presence: true
  validates :date, presence: true
  validates :value, presence: true
  validates :cpf, presence: true, length: { is: 11 }
  validates :time, presence: true
  validates :card, presence: true, length: { is: 12 }
  validates :owner, presence: true, length: { maximum: 15 }
  validates :store, presence: true, length: { maximum: 20 }
  validates :store_id, presence: true
end
