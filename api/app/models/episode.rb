class Episode < ApplicationRecord
  belongs_to :podcast
  has_many :keywordisations
  has_many :keywords, through: :keywordisations
  
  has_many :notes, dependent: :destroy
  has_many :notators, through: :notes, dependent: :destroy
  has_many :favouritisations, dependent: :destroy
  has_many :favouriters, through: :favouritisations, dependent: :destroy

end
