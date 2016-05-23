class CreateLimits < ActiveRecord::Migration
  def change
    create_table :limits do |t|
      t.float :remainder_of_total
      t.float :credit_of_surgeries
      t.string :credit_medical_tests_rumors

      t.timestamps null: false
    end
  end
end
