require 'rails_helper'

RSpec.feature "Users", type: :feature do
  scenario "User login" do
     visit new_user_session_path
     fill_in :user_email, with: 'lucabrasi@gmail.com'
     fill_in :user_password, with: 'luca2001'
     click_button 'Login'
   end
end
