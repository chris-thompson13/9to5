class Boat < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :jobs
  validates :name, presence: true
  validates :name, uniqueness: true
  has_attached_file :avatar, styles: { big: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
