class CreateSymptoms < ActiveRecord::Migration
  def change
   create_table :symptoms do |t|
    t.string :description
    t.references :category
    t.references :solution
    t.references :hotspot

    t.timestamps null: false
   end 
  end
end
