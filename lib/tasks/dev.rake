namespace :dev do
  desc "Setting for development"
  task setup: :environment do
    
    ActiveRecord::Base.transaction do
      
      ############# USER ##################

      puts "Creating admin user"
      User.create!(
        name: "Administrador",
        email: "admin@elitemusica.com.br",
        password: "foobarcall",
        password_confirmation: "foobarcall"
      )
      puts "Admin user created"


      ############# BIO ####################

      puts "Creating bio"

      Bio.create!(
        resume: "
          We offers full-day and half-day music camps for kids of all ages and skill 
          levels – including beginners! Summer camps give students an opportunity to 
          focus on one instrument or genre for a whole week.

          We offers full-day and half-day music camps for kids of all ages and skill 
          levels – including beginners! Summer camps give students an opportunity to 
          focus on one instrument or genre for a whole week.
        ",
        bio: ""
      )

      puts "Bio created"


      ############## VIDEO ####################

      puts "Creating video"

      HomeVideo.create!(
        title: "Apresentação do coral da Escola",
        link: "https://www.youtube.com/watch?v=aGOFOrbh3aI"
      )

      puts "Video created"


      ############## VIDEO ####################

      # puts "Creating contato"

      # Contact.create!(
      #   rua: "Av. Minístro João Alberto", 
      #   numero: "x", 
      #   cep: "76240-000",
      #   cidade: 'Aragarças',
      #   uf: 'GO',
      #   phone_cell: '(xx) xxxxx - xxxxx',
      #   phone_fixed: '(xx) xxxxx - xxxxx',
      #   whatsapp: '(xx) xxxxx - xxxxx',
      #   att_week: '08:00 - 21:00',
      #   att_weekend: '08:00 - 12:00',
      #   email: 'xxxxxx@xxxxxxxxxxxx.com',
      #   facebook: '',
      #   instagram: ''
      # )

      # puts "Contact created"

    end

  end

end
