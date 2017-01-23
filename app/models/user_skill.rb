class UserSkill < ApplicationRecord
  validates :user_id, presence: true
  validates :skill_tag_id, presence: true
  validates :skill_tag_id, uniqueness: { scope: :user_id,
    message: "同じスキルを２つ以上持つことはできません。" }
  validates :points, numericality: true
  belongs_to :user
  belongs_to :skill_tag
  has_many :plusings
  has_one :adding

  scope :points_desc, -> { order(points: :desc)  }

  # def plused_users
  #   self.plusings.map |p| do
  #     p.user.username
  #   end
  # end

end
