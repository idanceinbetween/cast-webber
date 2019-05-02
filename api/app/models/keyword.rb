class Keyword < ApplicationRecord
  has_many :keywordisations
  has_many :episodes, through: :keywordisations

  def keyword_episodes_count
    "#{self.word} (#{self.episodes.count})"
  end

end
