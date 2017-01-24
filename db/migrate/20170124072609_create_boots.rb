class CreateBoots < ActiveRecord::Migration[5.0]
  def change
    create_table :boots do |t|
      t.string :name
      t.string :company
      t.string :model
      t.integer :size
      t.string :release

      t.timestamps
    end
  end
end
