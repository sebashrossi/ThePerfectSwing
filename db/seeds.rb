# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts ""
puts "------------------"
puts "Seeding started..."
puts "------------------"
puts ""
sleep 3
puts "Deleting all questions..."
Question.destroy_all
sleep 1
puts "Deleting all user sections..."
SectionUser.destroy_all
sleep 1
puts "Deleting all Sections...."
Section.destroy_all
sleep 1
puts "Deleting all user trainings..."
TrainingUser.destroy_all
sleep 1
puts "Deleting all Trainings...."
Training.destroy_all
sleep 1
puts "Deleting all Companies..."
Company.destroy_all
sleep 1
puts "Deleting all Users..."
User.destroy_all
sleep 1
puts ""
puts "Database is empty."
puts ""
sleep 2
puts "Creating user..."
sleep 1
user = User.create!(first_name: 'Jordan', last_name: 'Belfort', email: 'jordanbelfort@netflix.com', password: '123456', admin: false)
puts ""
puts "-------------------------------------"
puts "User #{user.first_name} #{user.last_name} has been created."
puts "-------------------------------------"
puts ""
sleep 2
puts "Creating company..."
company = Company.create!(name: 'Netflix', address: '123 Fake Street', user: user)
sleep 1
puts ""
puts "---------------------------------"
puts "Company #{company.name} has been created."
puts "---------------------------------"
puts ""
sleep 2
puts ""
puts "Assigning #{user.first_name} #{user.last_name} to #{company.name}..."
user.company = company
user.save!
sleep 1
puts ""
puts "--------------------------------------------"
puts "#{user.first_name} #{user.last_name} has been assigned to #{company.name}."
puts "--------------------------------------------"
puts ""
sleep 2
# TRAINING 1 COMPLETE
puts "Creating 1st training..."
training1 = Training.create!(name: 'Onboarding', description: 'Welcome to the Complete Web Development Training, the only training you need to learn to code and become a full-stack web developer. We\'ll take you step-by-step through engaging video tutorials and teach you everything you need to know to succeed as a web developer. The course includes over 50 hours of HD video tutorials and builds your programming knowledge while making real-world websites and web apps.', department: 'Software engineer', company: company)
sleep 2
puts "Creating training sections for #{training1.name}..."
section11 = Section.create!(name: 'IDE', length: 60, description: "An integrated development environment (IDE) is a software application that provides comprehensive facilities to computer programmers for software development. An IDE normally consists of at least a source code editor, build automation tools and a debugger. We are going to be using Visual Studio Code.", video_url: 'https://www.youtube.com/watch?v=fnPhJHN0jTE', training: training1)

section12 = Section.create!(name: 'Terminal 101', length: 72, description: "As a terminal emulator, the application provides text-based access to the operating system, in contrast to the mostly graphical nature of the user experience of macOS, by providing a command-line interface to the operating system when used in conjunction with a Unix shell, such as zsh. The user can choose other shells available with macOS, such as the KornShell, tcsh, and bash.", video_url: 'https://www.youtube.com/watch?v=oxuRxtrO2Ag', training: training1)
sleep 2
puts "Creating questions for section #{section11.name}..."
sleep 1
question11_1 = Question.create!(content: "How do you open your project in Visual Studio Code?", answer: 'File -> Open', possible_answers: ['Edit -> Copy', 'File -> Save'], section: section11)

question11_2 = Question.create!(content: "How do you save your project in Visual Studio Code?", answer: 'File -> Save', possible_answers: ['Edit -> Copy', 'File -> Open'], section: section11)


question11_3 = Question.create!(content: "How do you copy a text in Visual Studio Code?", answer: 'Edit -> Copy', possible_answers: ['File -> Copy', 'Edit -> Paste'], section: section11)

puts "Creating questions for section #{section12.name}..."

question12_1 = Question.create!(content: "How do you go from current directory to any folder?", answer: 'cd <path_to_folder>', possible_answers: ['mkdir <path_to_folder>', 'rm <path_to_folder>'], section: section12)

question12_2 = Question.create!(content: "How do you go from current directory to a child folder?", answer: 'cd <folder_name>', possible_answers: ['rm <folder_name>', 'mkdir <folder_name>'], section: section12)

question12_3 = Question.create!(content: "How can you retrieve a command you recently typed in your terminal?", answer: 'Press the up arrow until you retrieve it', possible_answers: ['Press the left arrow until you retrieve it', 'Press the down arrow until you retrieve it'], section: section12)

question12_4 = Question.create!(content: "How do you print the path of the current directory in the terminal?", answer: 'pwd', possible_answers: ['print <current_directory>', 'pcd'], section: section12)

question12_5 = Question.create!(content: "How do you go back to your computer’s home directory?", answer: 'cd', possible_answers: ['rm', 'pwd'], section: section12)

question12_6 = Question.create!(content: "How do you print in the terminal the list of folders and files in current directory?", answer: 'ls', possible_answers: ['cd', 'lf'], section: section12)
sleep 1
puts ""
# TRAINING 2 COMPLETE
puts "Creating 2nd training..."
training2 = Training.create!(name: 'Ruby', description: "This is the introduction to Ruby programming language.", department: 'Software engineer', company: company)

sleep 2
puts "Creating training sections for #{training2.name}..."

section21 = Section.create!(name: 'Programming basics', length: 16, description: "Play with IRB, launch a ruby script from the terminal. Learn about variables, methods and built-in objects.", video_url: "https://www.youtube.com/watch?v=lkkYoRXd6Dw", training: training2)

section22 = Section.create!(name: 'Flow, Conditionals & Arrays', length: 9, description: "Learn about conditional statements and loops; coding structures that modify the flow of your programs. Define and play with arrays.", video_url: "https://www.youtube.com/watch?v=F9WRA0cDOZ4", training: training2)

section23 = Section.create!(name: 'Iterators & Blocks', length: 10, description: "Embrace all the cool ruby iterators (each, select, map and more). Understand what’s a ruby block and how a method can call a block with yield.", video_url: "https://www.youtube.com/watch?v=O3fU3gLSvsI", training: training2)

section24 = Section.create!(name: 'Hash & Symbols', length: 6, description: "Finally, let’s introduce hashes - data stuctures designed to store key-value pairs like dictionaries. Define and manipulate your own hashes. Understand symbols - objects a bit similar to strings but more adpated for storing “keywords” of your code. You’ll often see symbols as hash keys, so get used to it!", video_url: "https://www.youtube.com/watch?v=QdJQcN8XPMw", training: training2)

sleep 2
puts "Creating questions for section #{section21.name}..."

question21_1 = Question.create!(content: "Do you know a shortcut to define an array of strings?", answer: '%w', possible_answers: ['$w', '!w'], section: section21)

question21_2 = Question.create!(content: "What does (1..10).to_a return?", answer: 'An array.', possible_answers: ['An error.', 'A String.'], section: section21)

question21_3 = Question.create!(content: "How can you sort an array?", answer: '.sort', possible_answers: ['.order', '.map'], section: section21)

question21_4 = Question.create!(content: "Do you know what a ? at the end of a method name returns?", answer: 'A boolean.', possible_answers: ['An Error.', 'A String.'], section: section21)

question21_5 = Question.create!(content: "How can you get the number of items contained in an array?", answer: '.count', possible_answers: ['.number', '.quantity'], section: section21)

question21_6 = Question.create!(content: "Do you know how to split a String sentence into an Array of words?", answer: '.split', possible_answers: ['.to_a', '.words'], section: section21)

question21_7 = Question.create!(content: "How can you tell if an Integer is even?", answer: '.even?', possible_answers: ['.even', '.pair'], section: section21)

question21_8 = Question.create!(content: "How do you use interpollation?", answer: '#{}', possible_answers: ['${}', '#()'], section: section21)

sleep 1
puts "Creating questions for section #{section22.name}..."

question22_1 = Question.create!(content: "How do you append an element to an array?", answer: '.push', possible_answers: ['.append', '>>'], section: section22)

question22_2 = Question.create!(content: "How do you write code that runs only if a condition is satisfied?", answer: 'if', possible_answers: ['.condition', '.if'], section: section22)

question22_3 = Question.create!(content: "How can you get the first item of an array?", answer: '.first', possible_answers: ['array[1]', 'array[first]'], section: section22)

question22_4 = Question.create!(content: "How can you get the last item of an array?", answer: '.last', possible_answers: ['array[last]', '.to_last'], section: section22)

question22_5 = Question.create!(content: "How can you delete an item from an array?", answer: '.delete', possible_answers: ['.destroy', 'array[-1]'], section: section22)

question22_6 = Question.create!(content: "What is the opposite of while?", answer: 'until', possible_answers: ['.not_while', '.until'], section: section22)

question22_7 = Question.create!(content: "How can you test the opposite of a given condition?", answer: '!', possible_answers: ['?', '^'], section: section22)

question22_8 = Question.create!(content: "Do you know how to test if condition_1 AND condition_2 are satisfied?", answer: '&&', possible_answers: ['==', '$$'], section: section22)

sleep 1
puts "Creating questions for section #{section23.name}..."

question23_1 = Question.create!(content: "How do you clean an Array from items matching a condition?", answer: '.reject', possible_answers: ['.choose', '.clean'], section: section23)

question23_2 = Question.create!(content: "How can you compute the sum of integers stored in an Array?", answer: '.sum', possible_answers: ['.add', '++'], section: section23)

question23_3 = Question.create!(content: "How do you define a method that can accept a block as an argument?", answer: 'yield', possible_answers: ['block', '.yield'], section: section23)

question23_4 = Question.create!(content: "What is the simplest way to iterate through the items of an Array?", answer: '.each', possible_answers: ['.forEach', '.iterate'], section: section23)

question23_5 = Question.create!(content: "What is a destructive method? Give an example.", answer: '.map!', possible_answers: ['.destructive', '.each'], section: section23)

question23_6 = Question.create!(content: "How would you sort an Array with a given sorting criteria?", answer: '.sort_by', possible_answers: ['.reject', '.order'], section: section23)

sleep 1
puts "Creating questions for section #{section24.name}..."

question24_1 = Question.create!(content: "How can you get all the values of a Hash in an array?", answer: '.values', possible_answers: ['.reveal', '.keys'], section: section24)

question24_2 = Question.create!(content: "What method should you use on a Hash if you just need to iterate over its keys?", answer: '.each_key', possible_answers: ['.each', '.key'], section: section24)

question24_3 = Question.create!(content: "How can you tell if a key is present in a Hash", answer: '.key?', possible_answers: ['.key_present?', '.key'], section: section24)

question24_4 = Question.create!(content: "How can you tell if a value is present in a Hash?", answer: '.value?', possible_answers: ['.values?', '.value_present?'], section: section24)

question24_5 = Question.create!(content: "How can you retrieve all the keys of a Hash into an array?", answer: '.keys', possible_answers: ['.all_keys', '.values'], section: section24)

question24_6 = Question.create!(content: "Which ruby module included in Array is also included in Hash?", answer: 'Enumerable', possible_answers: ['Inumerables', 'Models'], section: section24)

sleep 1
puts ""
# TRAINING 3 COMPLETE

puts "Creating 3rd training..."

training3 = Training.create!(name: 'OOP', description: "Object-oriented programming (OOP) is a programming paradigm based on the concept of 'objects', which can contain data and code: data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods).", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training3.name}..."

section31 = Section.create!(name: "Classes & Instances", length: 3, description: "o far, you’ve played with lots of built-in objects in ruby (Integer, Hash, Date, etc.). But what about defining your own classes? During this first day you’ll learn to manipulate classes, instances, instance variables and instance methods. You’ll also learn about constructors and accessors. Let’s build your first classes!", video_url: "https://www.youtube.com/watch?v=qNldIKw7rGU", training: training3)

section32 = Section.create!(name: 'Inheritance & Self', length: 8, description: "More advanced OOP concepts, such as inheritance, class methods, and the meaning of the self keyword.", video_url: "https://www.youtube.com/watch?v=Zkk7whVb3f4", training: training3)

section33 = Section.create!(name: 'Cookbook', length: 33, description: "We don’t just use classes because they are fun :) They are also key for structuring our code (and therefore building smart software). So let’s start with a bit about software architecture and introduce the MVC pattern by coding a to-do manager. This is a really important morning lecture - don’t miss it! After this, you’ll work on a cookbook app for 2 days. Let’s start today and sleep on it during the weekend.", video_url: "https://www.youtube.com/watch?v=KlyObpu0rVc", training: training3)

sleep 1
puts "Creating questions for section #{section31.name}..."

question31_1 = Question.create!(content: "What does OOP stand for?", answer: 'Object-Oriented Programming', possible_answers: ['Ooga Ooga Pooga', 'Object-Oriental-Person'], section: section31)

question31_2 = Question.create!(content: "What defines behavior in a ruby class?", answer: 'Instance methods', possible_answers: ['Behavior methods', 'Instance variables'], section: section31)

question31_3 = Question.create!(content: "What defines state in a ruby class?", answer: 'Instance variables', possible_answers: ['Instance methods', 'State methods'], section: section31)

question31_4 = Question.create!(content: "Suppose we have a Car class with a @color instance variable and an attr_reader :color. Let’s consider an instance of Car called my_car, how can you get its color?", answer: 'my_car.color', possible_answers: ['car.color', 'color.my_car'], section: section31)

question31_5 = Question.create!(content: "What’s the class constructor method name in ruby?", answer: '.new', possible_answers: ['.constructor', '.make'], section: section31)

question31_6 = Question.create!(content: "Do you know how to set both a getter and a setter in one line?", answer: 'attr_accessor', possible_answers: ['set_getter', 'getter_setter'], section: section31)


sleep 1
puts "Creating questions for section #{section32.name}..."

question32_1 = Question.create!(content: "The destroy_all method is an instance method. True or False?", answer: 'False', possible_answers: ['True'], section: section32)

question32_2 = Question.create!(content: "The destroy method is an instance method. True or False?", answer: 'True', possible_answers: ['False'], section: section32)

question32_3 = Question.create!(content: "The destroy method is a class method. True or False?", answer: 'False', possible_answers: ['True'], section: section32)

question32_4 = Question.create!(content: "Name the parent class of Employee class. | class Employee < Person |", answer: 'Person', possible_answers: ['No parent class', 'Employee'], section: section32)

sleep 1
puts "Creating questions for section #{section33.name}..."


question33_1 = Question.create!(content: "In a 1-model Task manager in ruby, what class / file plays the role of the DB?", answer: 'TaskRepository', possible_answers: ['TaskManager', 'Task'], section: section33)

question33_2 = Question.create!(content: "What does MVC stand for?", answer: 'Model-View-Controller', possible_answers: ['Model-Video-Controller', 'Movie-Visual-Control'], section: section33)

question33_3 = Question.create!(content: "What type of data should the TaskRepository’s @tasks Array store?", answer: 'Instances', possible_answers: ['Models', 'Integers'], section: section33)

sleep 1
puts ""

# TRAINING 4 COMPLETED

puts "Creating 4th training..."

training4 = Training.create!(name: 'Databases', description: "Time to learn about relational databases, discover the different relationships between tables (1:n, n:n) and how to draw a database scheme. Then, we’ll get started on SQL - the language used to make queries to our database structured with keywords (SELECT, FROM, WHERE, JOIN etc.). We will start with simple “read queries” (SELECT) on day one.", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training4.name}..."

section41 = Section.create!(name: 'Schema Design & SQL', length: 5, description: "Time to learn about relational databases, discover the different relationships between tables (1:n, n:n) and how to draw a database scheme. Then, we’ll get started on SQL - the language used to make queries to our database structured with keywords (SELECT, FROM, WHERE, JOIN etc.). We will start with simple “read queries” (SELECT) on day one.", video_url: "https://www.youtube.com/watch?v=3BZz8R7mqu0", training: training4)

section42 = Section.create!(name: 'CRUD with SQL', length: 3, description: "First, we get to grips with CRUD. After that, you’ll learn to write in the DB using a few new SQL keywords (INSERT, UPDATE, DELETE).", video_url: "https://www.youtube.com/watch?v=c9gqtjMaFHA", training: training4)

section43 = Section.create!(name: 'Active Record Basics', length: 56, description: "This is the first part of Active Record - a powerful ruby library to connect your object to a database. Active Record is one of the core modules in Rails. Discover how an ActiveRecord model is magically linked to a table thanks to a simple naming convention. That’s Active Record magic!", video_url: "https://www.youtube.com/watch?v=md7bnEcRAiA", training: training4)

section44 = Section.create!(name: 'Associations & Validations', length: 11, description: "Time to go deeper into Active Record and learn about validations and associations.", video_url: "https://www.youtube.com/watch?v=c3hoXWO_6ao", training: training4)

sleep 1
puts "Creating questions for section #{section41.name}..."

question41_1 = Question.create!(content: "What is the SQL keyword to retrieve content from the DB?", answer: 'SELECT', possible_answers: ['RETRIEVE', 'CHOOSE'], section: section41)

question41_2 = Question.create!(content: "What do you need to link two N:N related tables?", answer: 'Join table', possible_answers: ['Seperate table', 'A cable'], section: section41)

question41_3 = Question.create!(content: "What is the SQL keyword to specify a filtering condition clause in a query?", answer: 'WHERE', possible_answers: ['FILTER', 'REJECT'], section: section41)

sleep 1
puts "Creating questions for section #{section42.name}..."

question42_1 = Question.create!(content: "How would you establish a connection and send a query to a Sqlite DB with Ruby?", answer: '.execute', possible_answers: ['.conect', '.query'], section: section42)

question42_2 = Question.create!(content: "Whose responsibility is it to set the id of a new model instance?", answer: 'The database', possible_answers: ['The user', 'The developer'], section: section42)

question42_3 = Question.create!(content: "How do you Read (CRUD) in SQL?", answer: 'SELECT', possible_answers: ['READ', 'CHOOSE'], section: section42)

sleep 1
puts ""

# TRAINING 5 COMPLETED

puts "Creating 5th training..."

training5 = Training.create!(name: 'Front-End', description: "The frontend of a software program or website is everything with which the user interacts. From a user standpoint, the frontend is synonymous with the user interface. From a developer standpoint, it is the interface design and the programming that makes the interface function.", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training5.name}..."

section51 = Section.create!(name: 'HTML & CSS', length: 660, description: "You’ll cover a lot of HTML & CSS such as: HTML skeleton and common tags (in <head> and <body>), CSS simple and advanced selectors, Web-design resources for fonts & colors (google fonts, fontawesome, etc.)", video_url: "https://www.youtube.com/watch?v=mU6anWqZJcc", training: training5)

section52 = Section.create!(name: 'CSS Components', length: 600, description: "We will go a bit further and make you code your own CSS component library.", video_url: "https://www.youtube.com/watch?v=1Rs2ND1ryYc", training: training5)

section53 = Section.create!(name: 'Bootstrap, Grids & Layouts', length: 19, description: "We will first have a look at the CSS framework Bootstrap and everything it gives us then we will explore the different ways to structure your webpages by looking at the Bootstrap grid, flexboxes for simple layouts and CSS grid for more complex ones.", video_url: "https://www.youtube.com/watch?v=qmPmwdshCMw", training: training5)

section54 = Section.create!(name: 'JavaScript Basics', length: 68, description: "avaScript is THE programming language that is understood by browsers. It’s still a programming language, like Ruby, with types, variables, functions etc. But the syntax in JavaScript is different from Ruby’s, so you need to familiarise with it.", video_url: "https://www.youtube.com/watch?v=vEROU2XtPR8", training: training5)

section55 = Section.create!(name: 'DOM & Events', length: 31, description: "Now that we picked up the syntax, let’s go back to the browser and use JavaScript as a frontend language. On this day, we will introduce the DOM – how the browser processes the HTML webpage – and how we can use Javascript to interact with it.", video_url: "https://www.youtube.com/watch?v=QE1YQnhntgw", training: training5)

section56 = Section.create!(name: 'HTTP & AJAX', length: 10, description: "Let’s rehearse the basics of the Web with HTTP requests / response cycles. We will discover how to fetch content dynamically using AJAX and JavaScript without having to reload the page.", video_url: "https://www.youtube.com/watch?v=rjmtYkRK1nM", training: training5)

section57 = Section.create!(name: 'JavaScript Plugins', length: 22, description: "In this lecture, we will download external JavaScript packages with Yarn and use them in our interfaces. We’ll also see how to organise our code in several files in a frontend app.", video_url: "https://www.youtube.com/watch?v=g9_6KmiBISk", training: training5)

sleep 1
puts ""

# TRAINING 6 COMPLETED

puts "Creating 6th training..."

training6 = Training.create!(name: 'Rails', description: "Ruby on Rails, or Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer and HTML, CSS and JavaScript for user interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), and the active record pattern.", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training6.name}..."

section61 = Section.create!(name: 'Routing, Controllers & Views', length: 6, description: "Your first day will introduce the standard Rails flow of routing > controller > view without adding the model layer and explaining params. Over the course of the day, you’ll be transforming old ruby challenges from Week 1 into Rails apps.", video_url: "https://www.youtube.com/watch?v=mRJSovhdzWc", training: training6)

section62 = Section.create!(name: 'Models & CRUD', length: 26, description: "Here comes our old friend Active Record again! One of the most important Rails lectures. Your lead coach will code all of the 7 CRUD actions from scratch and introduce the resources routing. Pay attention! 🤓", video_url: "https://www.youtube.com/watch?v=JRytd5za3DI", training: training6)

section63 = Section.create!(name: 'Advanced Routing', length: 6, description: "In this module, you will add a second model to a Rails app by building a two model clone of Yelp, with restaurants and reviews. The morning lecture is about going Beyond CRUD with advanced routing and validations in Rails.", video_url: "https://www.youtube.com/watch?v=wqR73fXS4uM", training: training6)

section64 = Section.create!(name: 'Rails frontend', length: 5, description: "Learn the best setup for implementing Bootstrap SASS + frontend libraries, and switch from form_for to simple_form_for using Simple Form Bootstrap config. Learn about the asset pipeline and webpacker.", video_url: "https://www.youtube.com/watch?v=fAhzhucoC2I", training: training6)

section65 = Section.create!(name: 'Hosting & Image Upload', length: 8, description: "We’ll host images on Cloudinary, using ActiveStorage. The course also explains how you can secure your API keys using the dotenv gem. Listen carefully if you don’t want your bank details stolen on Github.", video_url: "https://www.youtube.com/watch?v=V2eaE29Zoms", training: training6)

section66 = Section.create!(name: 'Devise', length: 14, description: "Authentication with Devise gem.", video_url: "https://www.youtube.com/watch?v=7v2EMmfBJL8", training: training6)

section67 = Section.create!(name: 'Pundit', length: 83, description: "Following on from Devise, we will teach you how to handle authorization in your Rails app.", video_url: "https://www.youtube.com/watch?v=77Z_u2QDTZA", training: training6)

section68 = Section.create!(name: 'Geocoding', length: 14, description: "Lecture on geocoding (with the geocoder gem) plus a bit about using the Google API to add autocomplete on address form inputs.", video_url: "https://www.youtube.com/watch?v=2oRmtxR5vg8", training: training6)

section69 = Section.create!(name: 'Search', length: 16, description: "This lecture covers the search topic, from the search 101 using ActiveRecord to stronger solutions like ElasticSearch or Algolia.", video_url: "https://www.youtube.com/watch?v=s88Uc0InOAM", training: training6)

section610 = Section.create!(name: 'AJAX in Rails', length: 26, description: "Once you understand CRUD and can quickly re-create a rails scaffold, it’s time to add some extra wizardry using AJAX. You’ll be able to talk to the server without reloading the page (adding new comments to posts / clicking on star ratings / removing something from a list, etc.)", video_url: "https://www.youtube.com/watch?v=2Il7PPhen3o", training: training6)
sleep 1
puts "**** THIS SECTIONS HAVE NO QUESTIONS ****"
puts ""
sleep 1

# TRAINING 7 COMPLETED

puts "Creating 7th training..."


training7 = Training.create!(name: 'Deeper JavaScript', description: "We already taought you a basic understanding of Javascript. On these training we will go deeper into intermideate and advanced concepts.", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training7.name}..."

section71 = Section.create!(name: 'jQuery', length: 8, description: "jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.It is free, open-source software using the permissive MIT License. As of May 2019, jQuery is used by 73% of the 10 million most popular websites. Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having at least 3 to 4 times more usage than any other JavaScript library.", video_url: "https://www.youtube.com/watch?v=hMxGhHNOkCU", training: training7)

section72 = Section.create!(name: 'Loops', length: 40, description: "JavaScript supports much of the structured programming syntax from C (e.g., if statements, while loops, switch statements, do while loops, etc.). One partial exception is scoping: JavaScript originally had only function scoping with var.", video_url: "https://www.youtube.com/watch?v=rTDAAhUgJZM", training: training7)

section73 = Section.create!(name: 'Callbacks', length: 25, description: "In computer programming, a callback, also known as a 'call-after' function, is any executable code that is passed as an argument to other code; that other code is expected to call back (execute) the argument at a given time. This execution may be immediate as in a synchronous callback, or it might happen at a later point in time as in an asynchronous callback. Programming languages support callbacks in different ways, often implementing them with subroutines, lambda expressions, blocks, or function pointers.", video_url: "https://www.youtube.com/watch?v=PoRJizFvM7s", training: training7)

section74 = Section.create!(name: 'React.js', length: 610, description: "React (also known as React.js or ReactJS) is an open-source, front end, JavaScript library for building user interfaces or UI components. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications. However, React is only concerned with state management and rendering that state to the DOM, so creating React applications usually requires the use of additional libraries for routing. React Router is an example of such a library. And also large and complicated applications are required to make AJAX calls to fetch or mutate data. You can use any library you like with React such as Axios, JQuery AJAX or the browser built-in window.fetch.", video_url: "https://www.youtube.com/watch?v=4UZrsTqkcW4", training: training7)

sleep 1
puts "**** THIS SECTIONS HAVE NO QUESTIONS ****"
puts ""
sleep 1
# TRAINING 8 COMPLETED

puts "Creating 8th training..."

training8 = Training.create!(name: 'Alternate back end', description: "On this training we will teach you other back end languages such as Node.js and Express.js", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training8.name}..."

section81 = Section.create!(name: 'Node.js', length: 420, description: "Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that runs on the V8 engine and executes JavaScript code outside a web browser. Node.js lets developers use JavaScript to write command line tools and for server-side scripting—running scripts server-side to produce dynamic web page content before the page is sent to the user's web browser. Consequently, Node.js represents a 'JavaScript everywhere' paradigm, unifying web-application development around a single programming language, rather than different languages for server-side and client-side scripts.", video_url: "https://www.youtube.com/watch?v=JnvKXcSI7yk", training: training8)

section82 = Section.create!(name: 'Expresss.js', length: 74, description: "Express.js, or simply Express, is a back end web application framework for Node.js, released as free and open-source software under the MIT License. It is designed for building web applications and APIs. It has been called the de facto standard server framework for Node.js.", video_url: "https://www.youtube.com/watch?v=L72fhGm1tfE", training: training8)
sleep 1
puts "**** THIS SECTIONS HAVE NO QUESTIONS ****"
puts ""
sleep 1

# TRAINING 9 COMPLETED

puts "Creating 9th training..."

training9 = Training.create!(name: 'API', description: "An application programming interface (API) is a computing interface that defines interactions between multiple software applications or mixed hardware-software intermediaries.[1] It defines the kinds of calls or requests that can be made, how to make them, the data formats that should be used, the conventions to follow, etc. It can also provide extension mechanisms so that users can extend existing functionality in various ways and to varying degrees. An API can be entirely custom, specific to a component, or designed based on an industry-standard to ensure interoperability. Through information hiding, APIs enable modular programming, allowing users to use the interface independently of the implementation.", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training9.name}..."

section91 = Section.create!(name: 'Build your API', length: 60, description: "Build an iOS app, provide service to customers, build a platform, etc.", video_url: "https://www.youtube.com/watch?v=vjf774RKrLc", training: training9)
sleep 1
puts "**** THIS SECTIONS HAVE NO QUESTIONS ****"
puts ""
sleep 1

# TRAINING 10 COMPLETED

puts "Creating 10th training..."

training10 = Training.create!(name: 'Git, GitHub, Version Control', description: "Git is software for tracking changes in any set of files, usually used for coordinating work among programmers collaboratively developing source code during software development. Its goals include speed, data integrity, and support for distributed, non-linear workflows (thousands of parallel branches running on different systems).", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training10.name}..."

section101 = Section.create!(name: "Git", length: 3, description: "For each document version, we need to know: When the file was modified, What changed, Why it was modified, Who did the change. In a nutshell, We want a tool which: tracks document versions, keeps an history of document changes, foster team work. Git.", video_url: "https://www.youtube.com/watch?v=2ReR1YJrNOM", training: training10)

section102 = Section.create!(name: 'GitHub', length: 70, description: "GitHub, Inc. is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management (SCM) functionality of Git, plus its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, continuous integration and wikis for every project. Headquartered in California, it has been a subsidiary of Microsoft since 2018.", video_url: "https://www.youtube.com/watch?v=RGOj5yH7evk", training: training10)

sleep 1
puts "**** THIS SECTIONS HAVE NO QUESTIONS ****"
puts ""
sleep 1


# TRAINING 11 COMPLETED

puts "Creating 11th training..."

training11 = Training.create!(name: 'Authentification & Security', description: "Authentication software is a means of authenticating users through a software application or mobile app, instead of a hardware device. This can also be referred to as mobile authentication, soft token authentication, or phone-as-a-token authentication. Authentication software is used to validate your identity when you’re logging into your account, either on your desktop or mobile device, or when you’re doing a banking transaction. It relieves you of having to carry a hardware authenticator.", department: 'Software engineer', company: company)

sleep 1
puts "Creating training sections for #{training11.name}..."

section111 = Section.create!(name: 'DB Encryption', length: 7, description: "Database encryption can generally be defined as a process that uses an algorithm to transform data stored in a database into 'cipher text' that is incomprehensible without first being decrypted. It can therefore be said that the purpose of database encryption is to protect the data stored in a database from being accessed by individuals with potentially 'malicious' intentions. The act of encrypting a database also reduces the incentive for individuals to hack the aforementioned database as 'meaningless' encrypted data is of little to no use for hackers. There are multiple techniques and technologies available for database encryption, the most important of which will be detailed in this article.", video_url: "https://www.youtube.com/watch?v=5idL-f5ofmo", training: training11)

section112 = Section.create!(name: '.ENV', length: 8, description: "Using Enviroment Variables to keep secrets safe.", video_url: "https://www.youtube.com/watch?v=txGL-Ld9zD8", training: training11)

section113 = Section.create!(name: 'Bcrypt', length: 7, description: "bcrypt is a password-hashing function designed by Niels Provos and David Mazières, based on the Blowfish cipher and presented at USENIX in 1999. Besides incorporating a salt to protect against rainbow table attacks, bcrypt is an adaptive function: over time, the iteration count can be increased to make it slower, so it remains resistant to brute-force search attacks even with increasing computation power.", video_url: "https://www.youtube.com/watch?v=O6cmuiTBZVs", training: training11)

section114 = Section.create!(name: 'Passport.js', length: 27, description: "Passport is authentication middleware for Node.js. Extremely flexible and modular, Passport can be unobtrusively dropped in to any Express-based web application. A comprehensive set of strategies support authentication using a username and password, Facebook, Twitter, and more.", video_url: "https://www.youtube.com/watch?v=fGrSmBk9v-4", training: training11)

section115 = Section.create!(name: 'OAuth 2.0', length: 11, description: "The OAuth 2.0 authorization framework enables a third-party application to obtain limited access to an HTTP service, either onbehalf of a resource owner by orchestrating an approval interaction between the resource owner and the HTTP service, or by allowing the third-party application to obtain access on its own behalf.", video_url: "https://www.youtube.com/watch?v=t4-416mg6iU", training: training11)
sleep 1
puts "**** THIS SECTIONS HAVE NO QUESTIONS ****"
puts ""
sleep 2
puts ""
puts "Assigning trainings to #{user.first_name} #{user.last_name}..."

training_user1 = TrainingUser.create!(user: user, training: training1)
training_user2 = TrainingUser.create!(user: user, training: training2)
training_user3 = TrainingUser.create!(user: user, training: training3)
training_user4 = TrainingUser.create!(user: user, training: training4)
training_user5 = TrainingUser.create!(user: user, training: training5)
training_user6 = TrainingUser.create!(user: user, training: training6)
training_user7 = TrainingUser.create!(user: user, training: training7)
training_user8 = TrainingUser.create!(user: user, training: training8)
training_user9 = TrainingUser.create!(user: user, training: training9)
training_user10 = TrainingUser.create!(user: user, training: training10)
training_user11 = TrainingUser.create!(user: user, training: training11)
sleep 2
puts ""
puts "Trainings have been assigned."
puts ""
sleep 2
puts "Completed. Seeds have been updated."
sleep 2
puts ""
puts "#############################################"
puts ""
puts "User : #{user.first_name} #{user.last_name}"
puts "Company : #{company.name}"
puts "Trainings assigned to #{user.first_name} #{user.last_name}: "
puts " - #{training1.name}"
puts " - #{training2.name}"
puts " - #{training3.name}"
puts " - #{training4.name}"
puts " - #{training5.name}"
puts " - #{training6.name}"
puts " - #{training7.name}"
puts " - #{training8.name}"
puts " - #{training9.name}"
puts " - #{training10.name}"
puts " - #{training11.name}"
puts ""
puts "#############################################"

