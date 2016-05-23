class CreateEvaluateHosptials < ActiveRecord::Migration
  def change
    create_table :evaluate_hosptials , {:id => false} do |t|
      t.references :hospital, index: true, foreign_key: true
      t.string :membersh_number , index: true
      t.float :rate

      t.timestamps null: false
    end
    execute "ALTER TABLE evaluate_hosptials ADD PRIMARY KEY (membersh_number,hospital_id);"
  end
end
