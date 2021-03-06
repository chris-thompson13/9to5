class User < ApplicationRecord
  has_many :boats, dependent: :destroy
  has_many :jobs, dependent: :destroy
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      
end
