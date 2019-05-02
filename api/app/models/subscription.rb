class Subscription < ApplicationRecord
  belongs_to :podcast
  belongs_to :subscriber, class_name: "User", foreign_key: "user_id"
end
