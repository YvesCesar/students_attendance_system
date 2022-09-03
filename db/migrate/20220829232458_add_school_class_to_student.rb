class AddSchoolClassToStudent < ActiveRecord::Migration[7.0]
  def change
    add_reference(:students, :school_class, foreign_key: true)
  end
end
