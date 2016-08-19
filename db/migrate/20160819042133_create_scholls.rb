class CreateScholls < ActiveRecord::Migration[5.0]
  def change
    create_table :scholls do |t|
      t.string :name
      t.string :adress
      t.string :phone
      t.string :category
      t.text :body

      t.timestamps
    end
  end
end
