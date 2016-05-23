class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers , {:id => false} do |t|
      t.string :membersh_number
      t.string :number_health_care
      t.string :national_id
      t.string :name
      t.string :address
      t.string :phone_number
      t.date :data_of_birth
      t.date :join_data
      t.string :graduation_year
      t.integer :number_of_participants
      t.integer :gender
      t.string :credit_card
      t.string :email
      t.string :path
      t.references :limit, index: true, foreign_key: true

      t.timestamps null: false
    end
    execute "ALTER TABLE engineers ADD PRIMARY KEY (membersh_number);"
  end
end
