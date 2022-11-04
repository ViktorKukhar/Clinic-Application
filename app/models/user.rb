class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :appointments

  has_many :doctors, through: :appointments

  def full_name
  "#{first_name} #{last_name}"
  end
  end
