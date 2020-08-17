# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.destroy_all
User.destroy_all
Deck.destroy_all

puts 'Starts seeding Cards'

cardJs1 = Card.create(question: 'What are arrow functions?', answer:'', image:'',instruction:'Explain arrow functions to a Chef.')
cardJs2 = Card.create(question: 'What is JSON?', answer:'', image:'',instruction: "Can you describe JSON as a person it's role in JS.")
cardJs3 = Card.create(question: 'What is an Event Listener?', answer:'', image:'',instruction: 'Describe a real world concept to communicate an Event Listener\'s purpose.')
cardJs4 = Card.create(question: 'How does JavaScript interact with HTML & CSS?', answer:'', image:'',instruction: 'Explain the relationship between HTML, CSS & JavaScript using the human anatomy.  ')
cardJs5 = Card.create(question: 'What is a JavaScript library?', answer:'', image:'',instruction:'Explain the JavaScript library using a toolbox as an example.')


user1 = User.create(name:"Eric",username:"grandmasboy",email:"eric@gmail.com",password:"please",score:0)

deck1 = Deck.create(title:"Vanilla JS Fundamentals", subject:'JavaScript', user: user1, card:[{card:cardJs1,card:cardJs2,card:cardJs3,card:cardJs4,card:cardJs5}])

cardRuby6 = Card.create(question: 'What is the difference between Ruby and Ruby on Rails?', answer:'', image:'',instruction:'Explain to a 5 year old a real world example.')
cardRuby2 = Card.create(question: 'What are enumerables?', answer:'', image:'',instruction: "Use a real world concept.")
cardRuby3 = Card.create(question: 'Can you explain MVC in Ruby on Rails?', answer:'', image:'',instruction: 'Describe this concept using a Chef, Server and Waiter.')
cardRuby4 = Card.create(question: 'What are Ruby gems?', answer:'', image:'',instruction: 'Explain Ruby Gems using a toolbox.')
cardRuby5 = Card.create(question: 'Explain Self Ruby?', answer:'', image:'',instruction:'Use a door and a key reference when describing Self.')

user2 = User.create(name:"Michelle",username:"raffisbiggestfan",email:"michelle@gmail.com",password:"sedona",score:0)

deck2 = Deck.create(title:"General Ruby", subject:'Ruby', user: user2, card:[{card:card1,card:card2,card:card3,card:card4,card:card5}])




puts"DONE"