class SchoolClass < ApplicationRecord
  validates :name, presence: true
  has_many :students
  accepts_nested_attributes_for :students

  def face_recognition
    @face_recognition_exec = exec("python3 python/face_recognition_example.py")
  end
end
