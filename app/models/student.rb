class Student < ApplicationRecord
  validates :name, presence: true
  has_one :school_class

  def name_with_initial
    "#{name}"
  end
end
