class SkillTag < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  validates :name, uniqueness: { case_sensitive: false }
  has_many :user_skills, -> { order(points: :desc) }
  has_many :skilled_users, through: :user_skills, source: :user

  before_save :to_be_unique_name

  def to_be_unique_name
    self.name.strip
  end

  def skill_of(user)
    user_skills.find_by(user_id: user.id)
  end

end
