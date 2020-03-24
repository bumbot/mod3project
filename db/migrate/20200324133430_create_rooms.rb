class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.integer :room_number
      t.integer :state #status code of game

      t.timestamps
    end
  end
end
