class CreateEvaluateDoctors < ActiveRecord::Migration
  def change
    create_table :evaluate_doctors , {:id => false}  do |t|
      t.references :doctor, index: true, foreign_key: true
      t.string :membersh_number , index: true
      t.float :rate

      t.timestamps null: false
    end
     execute "ALTER TABLE evaluate_doctors ADD PRIMARY KEY (membersh_number,doctor_id);"
  end
end
