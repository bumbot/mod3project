class CreateBattleData < ActiveRecord::Migration[6.0]
  def change
    create_table :battle_data do |t|
      t.string :winnerSolution
      t.string :loserSolution
      t.integer :battle_id

      t.timestamps
    end
  end
end
