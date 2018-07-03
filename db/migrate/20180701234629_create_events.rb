class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :location
      t.string :description
      t.string :key_code
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
