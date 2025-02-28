# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

puts "delete movies"
Movie.delete_all
puts "create movies"
for a in 1..100 do
  title = Faker::Movie.title
  description = Faker::Lorem.paragraph(sentence_count: 6, supplemental: true, random_sentences_to_add: 6)
  genre = Faker::Book.genre

  Movie.create!(title: title, description: description, genre: genre)

end
puts "#{Movie.count} movies were generated"

puts "delete lists"
List.delete_all
puts "create lists for user"
for a in 1..5 do
  name = Faker::Quote.singular_siegler
  user_id = 1
  List.create(name: name, user_id: user_id)
end
puts "#{List.count} lists were generated"
