namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "jo",
                         email: "jo@gmail.com",
                         password: "jo12345",
                         password_confirmation: "jo12345",
                         admin: true)
    
  end
end
