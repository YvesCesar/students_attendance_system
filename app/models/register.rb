class Register < ApplicationRecord
  belongs_to :frequency_register
  belongs_to :student
end
