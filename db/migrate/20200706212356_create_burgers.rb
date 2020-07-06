class CreateBurgers < ActiveRecord::Migration[6.0]
  def change
    create_table :burgers do |t|
      t.string :bun
      t.string :meat
      t.integer :price

      t.timestamps
    end
  end
end
