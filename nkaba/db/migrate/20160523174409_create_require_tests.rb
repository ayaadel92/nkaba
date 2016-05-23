class CreateRequireTests < ActiveRecord::Migration
  def change
    create_table :require_tests , {:id => false}  do |t|
      t.references :transfer, index: true, foreign_key: true
      t.string :test
      t.integer :test_id, index: true

      t.timestamps null: false
    end 
    execute "ALTER TABLE require_tests ADD PRIMARY KEY (test_id,transfer_id);"
  end
end
