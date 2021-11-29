# frozen_string_literal: true

class Payment < ApplicationRecord
  validates :description, presence: true, uniqueness: true
  validates :operation, presence: true
  validates :signal, presence: true
end
