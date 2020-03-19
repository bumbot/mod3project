class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :answer
      t.string :testCase

      t.timestamps
    end
  end
end
