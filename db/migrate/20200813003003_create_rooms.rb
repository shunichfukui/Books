class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.references :book, foreign_key: true
      t.string :field
      t.timestamps
    end
  end
end
