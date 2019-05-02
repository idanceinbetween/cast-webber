class Category < ApplicationRecord
  has_many :categorisations
  has_many :podcasts, through: :categorisations

  def category_podcasts_count
    "#{self.name} (#{self.podcasts.count})"
  end

end
