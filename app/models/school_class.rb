class SchoolClass < ApplicationRecord
  validates :name, presence: true
  has_many :students
  has_many :frequency_registers, dependent: :destroy
  accepts_nested_attributes_for :students
end
