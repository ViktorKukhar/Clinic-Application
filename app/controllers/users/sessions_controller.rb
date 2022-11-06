# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def profile
    @user = User.find(params[:id])
  end
end
