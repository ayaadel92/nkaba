class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.text :descriptions
      t.string :path_of_image
      t.string :path_of_video
      t.string :membersh_number, index: true
      t.references :hospital, index: true, foreign_key: true
      t.references :lab, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end

  end
end
