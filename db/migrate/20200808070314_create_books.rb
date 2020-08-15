class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string  :content
      t.integer    :genre_id ,               null: false
      t.references :user, foreign_key: true
      t.references  :tag, foreign_key: true
      t.timestamps
    end
  end
end
