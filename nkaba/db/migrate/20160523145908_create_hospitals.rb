class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :governorate
      t.float :latitude
      t.float :longitudes
      t.string :area
      t.float :rate
      t.text :descriptation
      t.string :path

      t.timestamps null: false
    end
  end
end
