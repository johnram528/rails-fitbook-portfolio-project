class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :estimated_time

      t.timestamps null: false
    end
  end
end
