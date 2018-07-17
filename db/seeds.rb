superman = Article.create! name: "Superman", author_name: "Clark Kent", published_at: 1.weeks.ago, content: "Superman is a fictional comic book superhero appearing in publications by DC Comics, widely considered to be an American cultural icon. Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932 while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc. (later DC Comics) in 1938, the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials, television programs, films, newspaper strips, and video games. (from Wikipedia)"
krypton = Article.create! name: "Krypton", author_name: "Clark Kent", published_at: 4.weeks.ago, content: "Krypton is a fictional planet in the DC Comics universe, and the native world of the super-heroes Superman and, in some tellings, Supergirl and Krypto the Superdog. Krypton has been portrayed consistently as having been destroyed just after Superman's flight from the planet, with exact details of its destruction varying by time period, writers and franchise. Kryptonians were the dominant people of Krypton. (from Wikipedia)"
batman = Article.create! name: "Batman & Robin", author_name: "Bruce Wayne", published_at: 2.weeks.ago, content: "Batman is a fictional character created by the artist Bob Kane and writer Bill Finger. A comic book superhero, Batman first appeared in Detective Comics #27 (May 1939), and since then has appeared primarily in publications by DC Comics. Originally referred to as The Bat-Man and still referred to at times as The Batman, he is additionally known as The Caped Crusader, The Dark Knight, and the World's Greatest Detective, among other titles. (from Wikipedia)"

Article.create! name: "Wonder Woman", author_name: "Diana of Themyscira", published_at: 6.weeks.ago, content: "Wonder Woman is a DC Comics superheroine created by William Moulton Marston. She first appeared in All Star Comics #8 (December 1941). The Wonder Woman title has been published by DC Comics almost continuously except for a brief hiatus in 1986. (from Wikipedia)"
Article.create! name: "Flash", author_name: "Bart Allen", published_at: 5.weeks.ago, content: "The Flash is a name shared by several fictional comic book superheroes from the DC Comics universe. Created by writer Gardner Fox and artist Harry Lampert, the original Flash first appeared in Flash Comics #1 (January 1940). (from Wikipedia)"
Article.create! name: "Splinter", author_name: "Hamato Yoshi", published_at: 3.weeks.ago, content: "Master Splinter, or simply Splinter, is a fictional character from the Teenage Mutant Ninja Turtles comics and all related media. (from Wikipedia)"

Comment.create! name: "Lois Lane", article: superman, content: "Does anyone know where I can find Superman?"
Comment.create! name: "Lex Luthor", article: superman, content: "I have some Kryptonite for you Superman!"

Comment.create! name: "The Joker", article: batman, content: "Haha, Batman, you will see your bat signal tonight!"
Comment.create! name: "Robin", article: batman, content: "Enough with the games Joker."
Comment.create! name: "Riddler", article: batman, content: "Did someone say games?"
Product.create!(name: "Settlers of Catan", price: 29.95)
Product.create!(name: "DVD Player", price: 79.99)
Product.create!(name: "Red Shirt", price: 12.49)
Product.create!(name: "Black Leather Couch", price: 399.99)
Product.create!(name: "Oak Coffee Table", price: 223.99)
Product.create!(name: "Technodrome", price: 27.99)
Product.create!(name: "Oh's Cereal", price: 3.95)
Product.create!(name: "Game Console", price: 299.95)
Product.create!(name: "Video Game", price: 29.95)
Product.create!(name: "Lawn Chair", price: 34.99)
Product.create!(name: "RailsCasts Pro Subscription", price: 9.00)
Product.create!(name: "Dog Toy Bone", price: 2.99)
Product.create!(name: "Heated Blanket", price: 27.95)
Product.create!(name: "Flux Capacitor", price: 19.55)
Product.create!(name: "Plutonium", price: 2397.25)
Product.create!(name: "Chocolate Pie", price: 3.14)
Product.create!(name: "Ryan's Cheesecake", price: 49.99)
Product.create!(name: "Acoustic Guitar", price: 1025.00)
Product.create!(name: "Model Enterprise", price: 27.99)
Product.create!(name: "Agricola", price: 45.99)
Product.create!(name: "Stone Age", price: 34.99)
Product.create!(name: "7 Wonders", price: 28.75)
Product.create!(name: "Millennium Falcon", price: 3597281000.00)
Product.create!(name: "Answer to Everything", price: 42.00)
Product.create!(name: "Box Kite", price: 63.00)
Product.create!(name: "Phil's Painting", price: 399.00)
Product.create!(name: "1000 Piece Jigsaw Puzzle", price: 14.99)
Product.create!(name: "TextMate 2", price: 75.00)
Product.create!(name: "Bowling Ball", price: 127.00)
Product.create!(name: "Rubber Ducky", price: 4.75)
Product.create!(name: "Unicorn Action Figure", price: 8.75)
Product.create!(name: "Rack", price: 32.49)
Product.create!(name: "Model Train Rails", price: 45.00)
Product.create!(name: "CanCan Music Record", price: 2.99)
100.times do
  Employee.create full_name: Faker::StarWars.character,
                  email: Faker::Internet.unique.email,
                  gender: (rand > 0.5 ? 'male' : 'female'),
                  salary: Faker::Number.between(1, 5000)
end
