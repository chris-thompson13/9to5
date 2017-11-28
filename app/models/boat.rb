class Boat < ApplicationRecord
  belongs_to :users
  has_many :jobs
end
