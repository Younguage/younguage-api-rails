class Flashcard < ApplicationRecord
  validates :french_word, presence: true
  validates :english_word, presence: true
end
