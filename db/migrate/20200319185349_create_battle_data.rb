class CreateBattleData < ActiveRecord::Migration[6.0]
  def change
    create_table :battle_data do |t|
      t.text :userSolution
      t.text :opponentSolution
      t.integer :battle_id

      t.timestamps
    end
  end
end
