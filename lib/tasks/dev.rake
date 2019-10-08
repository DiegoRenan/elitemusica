namespace :dev do
  desc "Setting for development"
  task setup: :environment do
    
    ActiveRecord::Base.transaction do
      
      # ############# USER ##################

      # puts "Creating admin user"
      # User.create!(
      #   name: "Administrador",
      #   email: "admin@elitemusica.com.br",
      #   password: "foobarcall",
      #   password_confirmation: "foobarcall"
      # )
      # puts "Admin user created"


      ############## BIO ####################

      # puts "Creating bio"

      # Bio.create!(
      #   resume: "
      #     We offers full-day and half-day music camps for kids of all ages and skill 
      #     levels – including beginners! Summer camps give students an opportunity to 
      #     focus on one instrument or genre for a whole week.

      #     We offers full-day and half-day music camps for kids of all ages and skill 
      #     levels – including beginners! Summer camps give students an opportunity to 
      #     focus on one instrument or genre for a whole week.
      #   ",
      #   bio: ""
      # )

      # puts "Bio created"


      ############## VIDEO ####################

      puts "Creating video"

      HomeVideo.create!(
        title: "Apresentação do coral da Escola",
        link: "https://www.youtube.com/watch?v=aGOFOrbh3aI"
      )

      puts "Video created"

    end

  end

end
