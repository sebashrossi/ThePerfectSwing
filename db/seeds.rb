# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
SectionUser.destroy_all
Section.destroy_all
TrainingUser.destroy_all
Training.destroy_all
Company.destroy_all
User.destroy_all

user = User.create!(first_name: 'Sebas', last_name: 'Rossi', email: 'bla@bla.com', password: '123456', admin: false)
company = Company.create!(name: 'Giraffe Corp', address: '123 Fake Street', user: user)
user.company = company
user.save!
training = Training.create!(name: 'Training 101', description: 'Loerm Impsum', department: 'Software engeneer', company: company)
section = Section.create!(name: 'Safety', length: 3, description: 'blabla', video_url: 'http://www.youtube.com', training: training)
questions = Question.create!(content: "What's the best fruit?", answer: 'banana', possible_answers: ['mango', 'apple'], section: section)
training_user = TrainingUser.create!(user: user, training: training)
section_user = SectionUser.create!(user: user, section: section, quiz_score: 90)
