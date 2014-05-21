namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name, email: email, password: password,
                   password_confirmation: password)
      users = User.all(limit: 6)
                   50.times do
                     first_name = Faker::Name.name
                     last_name = Faker::Name.name
                     users.each { |user| user.contacts.create!(first_name: first_name,
                       last_name: last_name) }
                   end            
    end
  end
end
