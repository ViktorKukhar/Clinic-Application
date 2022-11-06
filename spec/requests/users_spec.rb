require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "create" do
    it 'successfully creates a new user' do
      user = User.create!(
                     first_name: 'Vito',
                     last_name: 'Corleone',
                     email: 'vitocorleone@gmail.com',
                     password: 'vito2001',
                     password_confirmation: 'vito2001')
      expect(User.last.email).to eq("vitocorleone@gmail.com")
    end
  end
end
