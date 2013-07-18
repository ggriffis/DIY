class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.integer :sequence
      t.text :description
      t.references :how_to_list

      t.timestamps
    end
    add_index :instructions, :how_to_list_id
  end
end
