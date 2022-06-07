# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

category_playa = Category.create(name: "Playa")
category_montaña = Category.create(name: "Montaña")
category_viaje = Category.create(name: "Viaje")

6.times do |post|
  Post.create!(
    title: "Las Playas de la República Dominicana #{post}",
    body: "Puede buscar por arena, sol, mar - Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, 
    eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.",
    category_name: category_playa.name,
    tags: ['Sol', 'Arena', 'Mar']
  )
end
6.times do |post|
  Post.create!(
    title: "Montañas en el Caribe #{post}",
    body: "Puede buscar por sol, arboles - Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, 
    eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.",
    category_name: category_montaña.name,
    tags: ['Sol']
  )
end
6.times do |post|
  Post.create!(
    title: "Turismo interno #{post}",
    body: "Puede buscar por provincias, sol, arena - Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, 
    eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.",
    category_name: category_viaje.name,
    tags: ['Arena', 'Mar']
  )
end

