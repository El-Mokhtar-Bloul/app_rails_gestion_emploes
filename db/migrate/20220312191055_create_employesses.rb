class CreateEmployesses < ActiveRecord::Migration[7.0]
  def change
    create_table :employesses do |t|
      t.string :nom
      t.string :prenom
      t.integer :age
      t.integer :salaire

      t.timestamps
    end
  end
  def down
  	  	drop_table :employesses
  end
end
