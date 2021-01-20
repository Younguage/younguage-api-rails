class CreateFlashcards < ActiveRecord::Migration[6.1]
  def change
    create_table :flashcards do |t|
      t.string :french_word
      t.string :english_word
      t.boolean :mastered

      t.timestamps
    end
  end
end
