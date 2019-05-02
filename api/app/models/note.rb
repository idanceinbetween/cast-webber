class Note < ApplicationRecord
  belongs_to :notator, class_name: "User", foreign_key: "user_id"
  belongs_to :annotated_episode, class_name: "Episode", foreign_key: "episode_id"
end
