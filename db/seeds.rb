# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
Meeting.destroy_all
Donation.destroy_all
Message.destroy_all
Profile.destroy_all
Review.destroy_all
User.destroy_all
count = 1
xls_file = Roo::Excelx.new('db/data.xlsx')
s = Roo::CSV.new("db/test.csv")
xls_file.to_csv("db/test.csv")
CSV.foreach("db/test.csv") do |row|
    puts "seed n° #{count}"
  if row[9] == "Ville"
  else
    user = User.create!(
    email: row[13],
    password: "123456"
    )
    prof = Profile.create!(
    first_name: row[6],
    last_name: row[5],
    phone_number: row[10],
    address: row[7],
    post_code: row[8].to_i,
    city: row[9],
    user_id: user.id,
    formation: row[27],
    category: "Dentiste"
    )
    if row[8].to_i < 62000
      prof.departement = "Nord"
      prof.save
    else
      prof.departement = "Pas-de-Calais"
      prof.save
    end
    count += 1
  end
end


puts "***--- ADMIN #1 CREATION ---***"
user = User.create!(
    email: "michel.staumont@wanadoo.fr",
    password: "123456",


)
  prof = Profile.create!(
    first_name: "Michel",
    last_name: "STAUMONT",
    category: "admin",
    phone_number: "0661526441",
    birthday: "08/01/1948",
    address: "25 rue du cateau",
    post_code: 59550,
    city: "Landrecies",
    biographie: "Michel Staumont est né le 8 Janvier 1948. Il est le gérant de l'entreprise Eura Dentaire qui a été créée en 2001.",
    formation: "Faculté d'odontologie de Lille",
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )
puts "***--- ADMIN #2 CREATION ---***"
  user = User.create!(
    email: "eric.magnier@apf.asso.fr",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Eric",
    last_name: "MAGNIER",
    category: "admin",
    phone_number: "0671574545",
    birthday: "",
    address: "",
    post_code: 0,
    city: "",
    biographie: "",
    formation: "",
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )
puts "***--- ADMIN #3 CREATION ---***"
  user = User.create!(
    email: "urapei.5962@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Bruno",
    last_name: "CHEVRIER",
    category: "admin",
    phone_number: "0786139605",
    birthday: "",
    address: "",
    post_code: 0,
    city: "",
    biographie: "",
    formation: "",
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )

puts "***--- ADMIN #4 CREATION ---***"
  user = User.create!(
    email: "ordre.npdc.mission@gmail.com",
    password: "123456",

  )
  prof = Profile.create!(
    first_name: "Sophie",
    last_name: "LEMAN",
    category: "admin",
    phone_number: "0620091410",
    birthday: "",
    address: "",
    post_code: 0,
    city: "",
    biographie: "",
    formation: "",
    departement: "Nord",
    photo: "",
    user_id: user.id,
  )
art = Article.create!(
    article_title: "What is Lorem Ipsum?",
    article_content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    profile_id: prof.id,
  )



