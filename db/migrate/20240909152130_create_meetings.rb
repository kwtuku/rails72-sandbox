class CreateMeetings < ActiveRecord::Migration[7.2]
  def change
    create_table :meetings do |t|
      t.string :title, null: false
      t.integer :category, null: false
      t.string :meeting_room, default: "", null: false
      t.string :meeting_url, default: "", null: false

      t.timestamps
    end
  end
end
