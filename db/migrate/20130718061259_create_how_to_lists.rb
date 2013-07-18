class CreateHowToLists < ActiveRecord::Migration
  def change
    create_table :how_to_lists do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
