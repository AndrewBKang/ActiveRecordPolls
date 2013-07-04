# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Team.delete_all
User.delete_all
Poll.delete_all

teams =[]
5.times do |n|
  teams << Team.create({name: "team#{n}"})
end


teams.each do |team|
  10.times do |n|
    User.create({name: "#{team.name}name#{n}",team_id: team.id})
  end
end


#polls
User.all.each do |user|
  5.times do |n|
    Poll.create({title: "User#{user.name} Poll#{n}", pollster_id: user.id})
  end
end

#questions
Poll.all.each do |poll|
  6.times do |q|
    Question.create({body: "Poll#{poll.title} Question#{q}", poll_id: poll.id})
  end
end

#choices
Question.all.each do |question|
  3.times do |c|
    Choice.create({body: "Question#{question.body} Choice#{c}",question_id: question.id })
  end
end

#responses

Choice.all.each do |choice|
  10.times do |r|
    Response.create({choice_id: choice.id, respondant_id: rand(50)})
  end
end
