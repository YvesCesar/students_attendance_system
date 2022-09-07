class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table(:registers) do |t|
      t.references(:frequency_register, null: false, foreign_key: true)
      t.references(:student, null: false, foreign_key: true)

      t.timestamps
    end
  end
end
