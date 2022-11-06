# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

      return unless user.present?
      can :read, :all

  end

  def initialize(doctor)

      return unless doctor.present?
      can :read, :all

  end
end
