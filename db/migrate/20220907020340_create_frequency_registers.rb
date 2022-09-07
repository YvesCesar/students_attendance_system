class CreateFrequencyRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :frequency_registers do |t|
      t.references :school_class, null: false, foreign_key: true
      t.date(:date_field)

      t.timestamps
    end
  end
end
