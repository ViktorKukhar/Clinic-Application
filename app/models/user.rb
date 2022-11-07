class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, authentication_keys: [:login]

  validates :phone, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :phone, with: /^(?:\+?\d{1,3}[-]?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{2}[- ]?\d{1}$/, :multiline => true

  has_many :appointments
  has_many :doctors, through: :appointments

  def full_name
  "#{first_name} #{last_name}"
  end

  def login
    @login || self.phone || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
    where(conditions.to_h).where(["lower(phone) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:phone) || conditions.has_key?(:email)
    where(conditions.to_h).first
    end
  end
end
