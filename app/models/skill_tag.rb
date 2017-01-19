class SkillTag < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  validates :name, uniqueness: { case_sensitive: false }
  has_many :user_skills
  has_many :users, through: :user_skills
end
