class Student < ApplicationRecord
  validates :name, presence: true
  belongs_to :school_class
  accepts_nested_attributes_for :school_class, allow_destroy: true
  belongs_to :responsible
end
