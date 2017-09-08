class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, uniqueness: { scope: :cocktail }

  # validates :ingredient_id, presence: true : implicite when belongs to
end
