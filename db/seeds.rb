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
section = Section.create!(name: 'Safety', length: 3, description: 'blabla', video_url: 'https://www.youtube.com/watch?v=cpxI9eQdeec', training: training)
Question.create!(content: "What's the best food?", answer: 'Pad Thai', possible_answers: ['Pizza', 'Burger'], section: section)
Question.create!(content: "What's the best pet?", answer: 'dog', possible_answers: ['cat', 'parrot'], section: section)
Question.create!(content: "What's the best food?", answer: 'Pad Thai', possible_answers: ['Pizza', 'Burger'], section: section)
Question.create!(content: "What's the best pet?", answer: 'dog', possible_answers: ['cat', 'parrot'], section: section)
Question.create!(content: "What's the best food?", answer: 'Pad Thai', possible_answers: ['Pizza', 'Burger'], section: section)
Question.create!(content: "What's the best pet?", answer: 'dog', possible_answers: ['cat', 'parrot'], section: section)
Question.create!(content: "What's the best food?", answer: 'Pad Thai', possible_answers: ['Pizza', 'Burger'], section: section)
Question.create!(content: "What's the best pet?", answer: 'dog', possible_answers: ['cat', 'parrot'], section: section)
questions = Question.create!(content: "What's the best fruit?", answer: 'banana', possible_answers: ['mango', 'apple'], section: section)
training_user = TrainingUser.create!(user: user, training: training)

user2 = User.create!(first_name: 'Johnny', last_name: 'Crazy', email: 'blabla@bla.com', password: '123456', admin: false)
company2 = Company.create!(name: 'Heck', address: 'Hululu boulevard', user: user)
user2.company = company
user2.save!
training2 = Training.create!(name: 'Training 404', description: 'Loerm Impsum', department: 'Software engeneer', company: company2)
section2 = Section.create!(name: 'Safety', length: 3, description: 'blabla', video_url: 'https://www.youtube.com/watch?v=cpxI9eQdeec', training: training2)
questions2 = Question.create!(content: "What's the best City?", answer: 'Colorado Springs', possible_answers: ['Barcelona', 'Madrid'], section: section2)
training2_user2 = TrainingUser.create!(user: user2, training: training2)

training3 = Training.create!(name: 'Training 406', description: 'Loerm Impsum', department: 'Software engeneer', company: company2)
section3 = Section.create!(name: 'Safety', length: 3, description: 'blabla', video_url: 'https://www.youtube.com/watch?v=cpxI9eQdeec', training: training3)
questions3 = Question.create!(content: "What's the best Alcohol?", answer: 'beer', possible_answers: ['Appletini', 'Vodka soda'], section: section3)
training3_user2 = TrainingUser.create!(user: user2, training: training3)
