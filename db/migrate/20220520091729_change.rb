class Change < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.bigint :phone
      t.integer :age

      t.timestamps
  end
end
end
