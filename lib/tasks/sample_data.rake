namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "jo",
                         email: "jo@gmail.com",
                         password: "jo12345",
                         password_confirmation: "jo12345",
                         admin: true)
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end 
  end
end
