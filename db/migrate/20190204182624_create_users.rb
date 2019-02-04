class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.float :lat
      t.float :lon
      t.string :first_name
      t.string :second_name
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
