namespace :dev do
  desc "Setting for development"
  task setup: :environment do
    
    ActiveRecord::Base.transaction do
      puts "Creating admin user"
      User.create!(
        name: "Administrador",
        email: "admin@elitemusica.com.br",
        password: "foobarcall",
        password_confirmation: "foobarcall"
      )
      puts "Admin user created"
    end

  end

end
