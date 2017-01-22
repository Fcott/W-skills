class Plusing < ApplicationRecord
  validates :user_id, presence: true
  validates :user_skill_id, presence: true
  validates :user_skill_id, uniqueness: { scope: :user_id,
    message: "2点以上の追加はできません。" }
  belongs_to :user
  belongs_to :user_skill
end
