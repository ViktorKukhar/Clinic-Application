# frozen_string_literal: true

class Doctors::SessionsController < Devise::SessionsController
  def index
    @doctors = Doctor.all
  end

  def profile
    @doctor = Doctor.find(params[:id])
  end
end
