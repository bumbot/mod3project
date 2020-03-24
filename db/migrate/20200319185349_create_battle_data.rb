class CreateBattleData < ActiveRecord::Migration[6.0]
  def change
    create_table :battle_data do |t|
      t.string :userSolution
      t.string :opponentSolution
      t.integer :battle_id

      t.timestamps
    end
  end
end
