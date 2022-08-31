class SchoolClass < ApplicationRecord
  validates :name, presence: true
  has_many :students
  accepts_nested_attributes_for :students
end
