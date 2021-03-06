class User < ApplicationRecord
  has_many :trip_plans, dependent: :destroy
  has_many :matches, dependent: :destroy
  has_many :trip_plans_matches, through: :matches, class_name: 'TripPlan',
                                source: :trip_plan
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
