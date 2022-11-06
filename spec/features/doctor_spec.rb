require 'rails_helper'

RSpec.feature "Doctors", type: :feature do
  before :each do
    user = User.create!(first_name: 'Luca',
                   last_name: 'Brasi',
                   email: 'lucabrasi@gmail.com',
                   password: 'luca2001',
                   password_confirmation: 'luca2001')
    category = Category.create(name: "Urologist")
    doctor = Doctor.create!(first_name: 'Vito',
                   last_name: 'Corleone',
                   email: 'vitocorleone@gmail.com',
                   password: 'vito2001',
                   password_confirmation: 'vito2001',
                   category: Category.last)
    appointment = Appointment.create!(date: "2019-04-04 03:04:00 UTC",
                                       doctor: Doctor.last,
                                       user: User.last)
  end
  scenario "Doctor login" do
     visit new_doctor_session_path
     fill_in :doctor_email, with: 'user@test.com'
     fill_in :doctor_password, with: 'password'
     click_button 'Login'
   end
   scenario "Doctor send recommendation" do
     visit doctor_profile_path(id: Doctor.last)
     expect(page).to have_text(User.last.first_name)
     fill_in :appointment_recommendation, with: 'Doctor recommendation'
     click_button "Send recommendation"
     expect(page).to have_text("Closed appointments")
   end
 end
