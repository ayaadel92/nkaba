class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.date :data_of_request
      t.integer :percentage_shareholding
      t.string :status
      t.float :total_cost
      t.text :medicaldiagnosis
      t.string :membersh_number, index: true
      t.references :doctor, index: true, foreign_key: true
      t.references :hospital, index: true, foreign_key: true
      t.references :lab, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
