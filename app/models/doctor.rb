class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

 has_many :appointments
 has_many :users, through: :appointments
 has_one_attached :avatar
 belongs_to :category



 def full_name
  "#{first_name} #{last_name}"
end
end