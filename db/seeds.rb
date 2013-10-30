# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = Question.create([{title: 'McDonalds', body: 'How many chickens in 1 McNugget?'},
                             {title: 'Haliburton', body: 'What country should we invade next?'},
                             {title: 'Taco Bell', body: 'How do you respond when one of our
                              customers says "Your taco killed my parents!"?'}
  ])