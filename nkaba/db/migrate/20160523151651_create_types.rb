class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name_of_type

      t.timestamps null: false
    end
  end
end
