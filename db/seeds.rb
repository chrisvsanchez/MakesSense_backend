# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Card.destroy_all
# User.destroy_all
# Deck.destroy_all

# puts 'Starts seeding Cards'
user1 = User.create(name:"Eric",username:"grandmasboy",email:"eric@gmail.com")
deck1 = Deck.create(title:"Vanilla JS Fundamentals", subject:'JavaScript', user: user1)

cardJs1 = Card.create(question: 'What are arrow functions?', answer:'',instruction:'Explain arrow functions to a Chef.', deck: deck1)
cardJs2 = Card.create(question: 'What is JSON?', answer:'',instruction: "Can you describe JSON as a person it's role in JS.", deck: deck1)
cardJs3 = Card.create(question: 'What is an Event Listener?', answer:'',instruction: 'Describe a real world concept to communicate an Event Listener\'s purpose.', deck: deck1)
cardJs4 = Card.create(question: 'How does JavaScript interact with HTML & CSS?', answer:'',instruction: 'Explain the relationship between HTML, CSS & JavaScript using the human anatomy.  ', deck: deck1)
cardJs5 = Card.create(question: 'What is a JavaScript library?', answer:'',instruction:'Explain the JavaScript library using a toolbox as an example.', deck: deck1)




user2 = User.create(name:"Michelle",username:"raffisbiggestfan",email:"michelle@gmail.com")
deck2 = Deck.create(title:"General Ruby", subject:'Ruby', user: user2)
cardRuby6 = Card.create(question: 'What is the difference between Ruby and Ruby on Rails?', answer:'',instruction:'Explain to a 5 year old a real world example.', deck: deck2)
cardRuby2 = Card.create(question: 'What are enumerables?', answer:'',instruction: "Use a real world concept.", deck: deck2)
cardRuby3 = Card.create(question: 'Can you explain MVC in Ruby on Rails?', answer:'',instruction: 'Describe this concept using a Chef, Server and Waiter.', deck: deck2)
cardRuby4 = Card.create(question: 'What are Ruby gems?', answer:'',instruction: 'Explain Ruby Gems using a toolbox.', deck: deck2)
cardRuby5 = Card.create(question: 'Explain Self Ruby?', answer:'',instruction:'Use a door and a key reference when describing Self.', deck: deck2)

puts"DONE"