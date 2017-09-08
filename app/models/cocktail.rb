class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  # si tu enleves cettes cette ligne , cocktains;doses va pas marcher
  #dependent: :destroy => when you destroy a coaktail, you should destroy all associated doese
  has_many :ingredients, through: :doses, :dependent => :restrict_with_error
  # can' destroy an ingredient if it's at least used by one cocktail
  validates :name, uniqueness: true, presence: true
end
