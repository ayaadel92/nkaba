class CreateEvaluateLabs < ActiveRecord::Migration
  def change
    create_table :evaluate_labs , {:id => false} do |t|
      t.references :lab, index: true, foreign_key: true
      t.string :membersh_number , index: true
      t.float :rate

      t.timestamps null: false
    end
     execute "ALTER TABLE evaluate_labs ADD PRIMARY KEY (membersh_number,lab_id);"
  end
end
