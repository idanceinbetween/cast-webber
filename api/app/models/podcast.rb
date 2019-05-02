class Podcast < ApplicationRecord
  has_many :episodes
  has_many :categorisations
  has_many :categories, through: :categorisations
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions

end
