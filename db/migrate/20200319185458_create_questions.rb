class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :questionPrompt
      t.string :editorText
      t.string :finalText
      t.string :difficulty

      t.timestamps
    end
  end
end
