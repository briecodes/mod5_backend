class CreateSongEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :song_entries do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :song_title
      t.string :song_artist
      t.string :video_url
      t.string :video_id
      t.integer :order_number
      t.boolean :played, default: false
      t.boolean :passed, default: false

      t.timestamps
    end
  end
end
