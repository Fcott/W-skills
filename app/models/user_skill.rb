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


  def points
    plusings.count
  end

end
