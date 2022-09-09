class FrequencyRegister < ApplicationRecord
  belongs_to :school_class
  has_many :registers, dependent: :destroy
end
