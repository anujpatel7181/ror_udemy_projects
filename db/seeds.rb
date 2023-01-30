# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |i|
  Article.create(title: "Title #{i + 2}", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempor odio turpis, ac rhoncus ipsum vulputate non. Curabitur feugiat elit in eros finibus, et sodales dolor semper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi leo nulla, luctus ut imperdiet sollicitudin, mattis quis justo. Pellentesque quis dictum ligula, nec porttitor lacus. Duis eget augue quis orci porta molestie. In tincidunt dictum ultricies. Suspendisse pulvinar finibus libero feugiat blandit.")
end