class Favouritisation < ApplicationRecord
  belongs_to :favourite_episode, class_name: "Episode", foreign_key: "episode_id"
  belongs_to :favouriter, class_name: "User", foreign_key: "user_id"
end
