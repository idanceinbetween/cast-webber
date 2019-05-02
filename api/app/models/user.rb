class User < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :annotated_episodes, through: :notes, dependent: :destroy
  has_many :favouritisations, dependent: :destroy
  has_many :favourite_episodes, through: :favouritisations, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :podcasts, through: :subscriptions, dependent: :destroy

  validates :username, uniqueness: true, presence: true
  # validates :password_digest, presence: true

  has_secure_password

  has_many :active_relationships, class_name:  "Followship", foreign_key: "follower_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed, dependent: :destroy
  has_many :passive_relationships, class_name:  "Followship", foreign_key: "followed_id", dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower, dependent: :destroy

  def toggle_subscription(podcast)
    !self.podcasts.include?(podcast) ? self.podcasts.push(podcast) : self.podcasts.delete(podcast)
  end

  def toggle_favouritisation(episode)
    !self.favourite_episodes.include?(episode) ? self.favourite_episodes.push(episode) : self.favourite_episodes.delete(episode)
  end

  def toggle_followship(followed)
    !self.following.include?(followed) ? self.following.push(followed) : self.following.delete(followed)
  end

end
