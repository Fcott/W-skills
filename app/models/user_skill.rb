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

  scope :points_desc, -> { order(points: :desc) }
  scope :created_desc, -> { order(created_at: :desc) }


  def first_10_plusing
    plusings.first(10)
  end

end
