class Register < ApplicationRecord
  belongs_to :frequency_register
  belongs_to :student

  validates :frequency_register, :student, presence: :true
end
