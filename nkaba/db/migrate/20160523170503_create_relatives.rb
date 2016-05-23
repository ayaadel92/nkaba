class CreateRelatives < ActiveRecord::Migration
  def change
    create_table :relatives , {:id => false} do |t|
      t.string :number_health_care
      t.string :membersh_number, index: true
      t.date :date_of_birth
      t.string :name
      t.integer :gender
      t.string :relation_type
      t.string :national_id
      t.references :limit, index: true, foreign_key: true

      t.timestamps null: false
    end
     execute "ALTER TABLE relatives ADD PRIMARY KEY (membersh_number,number_health_care);"
  end
end
