class Adding < ApplicationRecord
  validates :user_id, presence: true
  validates :user_skill_id, presence: true
  belongs_to :user, dependent: :destroy
  belongs_to :user_skill, dependent: :destroy
end
