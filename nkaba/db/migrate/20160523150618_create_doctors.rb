class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :degree
      t.string :specialization
      t.string :address
      t.string :phone
      t.string :governorate
      t.string :area
      t.float :price
      t.string :time_from
      t.string :time_to
      t.string :mobile
      t.float :rate

      t.timestamps null: false
    end
  end
end
