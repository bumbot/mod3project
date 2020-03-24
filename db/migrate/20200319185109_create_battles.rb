class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.integer :user_id
      t.integer :opponent_id
      t.boolean :win
      t.integer :question_id
      t.integer :room_id
      t.string :user_time

      t.timestamps
    end
  end
end
