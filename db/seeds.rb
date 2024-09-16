# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

articles = [
  {title: "Article 1", description: "First article"},
  {title: "Article 2", description: "Second article"},
  {title: "Article 3", description: "Third article"}
]

Article.create(articles)

User.first_or_create(email: "x@x.com", password: "123456")
