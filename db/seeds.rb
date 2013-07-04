# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({name: 'andrew'})
Question.create({body:"question2", poll_id: 1})
Choice.create({body: 'choice2', question_id: 1})
Choice.create({body: 'choice3', question_id: 2})

