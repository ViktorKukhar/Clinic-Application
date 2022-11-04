# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Category.create!(name: 'Urologist', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla, felis sed faucibus maximus, ligula dolor ultrices purus, sit amet rutrum magna elit a sem.')
Category.create!(name: 'Nutritionist', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla, felis sed faucibus maximus, ligula dolor ultrices purus, sit amet rutrum magna elit a sem.')
Category.create!(name: 'Dermatologist', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla, felis sed faucibus maximus, ligula dolor ultrices purus, sit amet rutrum magna elit a sem.')
Category.create!(name: 'Psychotherapist', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla, felis sed faucibus maximus, ligula dolor ultrices purus, sit amet rutrum magna elit a sem.')
Category.create!(name: 'Pediatrist', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla, felis sed faucibus maximus, ligula dolor ultrices purus, sit amet rutrum magna elit a sem.')
Category.create!(name: 'Orthopaedist', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla, felis sed faucibus maximus, ligula dolor ultrices purus, sit amet rutrum magna elit a sem.')
Category.create!(name: 'Traumatologist', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent fringilla, felis sed faucibus maximus, ligula dolor ultrices purus, sit amet rutrum magna elit a sem.')
Doctor.create!(first_name: 'Vito',
               last_name: 'Corleone',
               email: 'vitocorleone@gmail.com',
               password: 'vito2001',
               password_confirmation: 'vito2001',
               category_id: 1)
Doctor.create!(first_name: 'Michael',
                last_name: 'Corleone',
                email: 'michaelcorleone@gmail.com',
                password: 'michael2001',
                password_confirmation: 'michael2001',
                category_id: 2)
Doctor.create!(first_name: 'Santino',
               last_name: 'Corleone',
               email: 'santinocorleone@gmail.com',
               password: 'santino2001',
               password_confirmation: 'santino2001',
               category_id: 3)
Doctor.create!(first_name: 'Fredo',
                last_name: 'Corleone',
                email: 'fredocorleone@gmail.com',
                password: 'fredo2001',
                password_confirmation: 'fredo2001',
                category_id: 4)
Doctor.create!(first_name: 'Vincent',
               last_name: 'Corleone',
               email: 'vincentcorleone@gmail.com',
               password: 'vincent2001',
               password_confirmation: 'vincent2001',
               category_id: 5)
Doctor.create!(first_name: 'Connie',
                last_name: 'Corleone',
                email: 'conniecorleone@gmail.com',
                password: 'connie2001',
                password_confirmation: 'connie2001',
                category_id: 6)
Doctor.create!(first_name: 'Anthony',
               last_name: 'Corleone',
               email: 'anthonycorleone@gmail.com',
               password: 'anthony2001',
               password_confirmation: 'anthony2001',
               category_id: 7)
