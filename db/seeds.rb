# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

User.destroy_all
Author.destroy_all
puts "user + highlight destroyed"

puts "starting seeds"

# user
  new_user = User.new(
    email: "readtorememberrrr@gmail.com",
    password: "readtoremember")
  puts "user not saved"
    # image = URI.open("https://avatars1.githubusercontent.com/u/15158574?s=400&u=323d8c6b203f88a8e1ea6fdf359977e1d7aa79c5&v=4")
    # new_user.photo.attach(io: image, filename: "#{new_user.name}", content_type: 'image/png')
    # new_user.save!
  #puts "added user with photo!"

# books
# 1 book
  author_1 = Author.create!(name: "Ernest Hemingway")
  new_book_1 = Source.new(
      title: "88 poems",
      publishing_year: "2018",
      category: "book")
      image_1 = URI.open("https://images-na.ssl-images-amazon.com/images/I/517tqzzYcXL._AC_.jpg")
      new_book_1.photo.attach(io: image_1, filename: "#{new_book_1.title}", content_type: 'image/png')

  new_book_1.author = author_1
  new_book_1.user = new_user
  puts new_book_1.author.id
  new_book_1.save!

# 2 book
  author_2 = Author.create!(name: "Matthew Walker")
  new_book = Source.new(
    title: "Why We Sleep: Unlockin the Power of Sleep and Dreams",
    publishing_year: "2017",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532663/2_vqy5ex.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_2
  new_book.user = new_user
  new_book.save!

# 3 book
  author_3 = Author.create!(name: "Daniel Kahneman")
  new_book = Source.new(
    title: "Thinking, Fast and Slow",
    publishing_year: "2011",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532077/3_d78iet.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_3
  new_book.user = new_user
  new_book.save!

# 4 book
  author_4 = Author.create!(name: "Edward Snowden")
  new_book = Source.new(
    title: "Permanent Record",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532092/4_cw0olp.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_4
  new_book.user = new_user
  new_book.save!

# 5 book
  author_5 = Author.create!(name: "David Wallace-Wells")
  new_book = Source.new(
    title: "The Uninhabitable Earth: Life After Warming",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532079/5_tg2jcq.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_5
  new_book.user = new_user
  new_book.save!

# 6 book
  author_6 = Author.create!(name: "Christiana Figueres, Tom Rivett-Carnac")
  new_book = Source.new(
    title: "The Future We Choose: Surviving the Climate Crisis",
    publishing_year: "2020",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532083/6_tukwno.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_6
  new_book.user = new_user
  new_book.save!

# 7 book
  author_7 = Author.create!(name: "Caroline Criado Perez, Anna Sak")
  new_book = Source.new(
    title: "Invisible Women: Data Bias in a World Designed for Men",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532090/7_giwjxu.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_7
  new_book.user = new_user
  new_book.save!

# 8 book
  author_8 = Author.create!(name: "Reni Eddo-Lodge")
  new_book = Source.new(
    title: "Why I'm No Longer Talking to White People About Race",
    publishing_year: "2017",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532090/8_iagkos.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_8
  new_book.user = new_user
  new_book.save!

# 9 book
  author_9 = Author.create!(name: "Ted Chiang")
  new_book = Source.new(
    title: "Exhalation: Stories",
    publishing_year: "2019",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532083/9_tdg7kf.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_9
  new_book.user = new_user
  new_book.save!

# 10 book
  author_10 = Author.create!(name: "Mark O'Connell")
  new_book = Source.new(
    title: "Notes from an Apocalypse: A Personal Hourney to the End of the World and Back",
    publishing_year: "2020",
    category: "book")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595532094/10_wevelj.jpg")
    new_book.photo.attach(io: image, filename: "#{new_book.title}", content_type: 'image/png')

  new_book.author = author_10
  new_book.user = new_user
  new_book.save!

# articles
# 1 article
  author_11 = Author.create!(name: "Kate Hollowood")
  new_article = Source.new(
      title: "In praise of doing nothing: How to turn boredom into brilliant ideas",
      publishing_year: "2019",
      category: "article")
      image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678356/1.1_vaemxa.png")
      new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

  new_article.author = author_1
  new_article.user = new_user
  new_article.save!

  # 2 article
  author_12 = Author.create!(name: "Naresh Ramchandani")
  new_article = Source.new(
    title: "The climate crisis is daunting, but as a creative professional, there’s much you can do",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678354/2.2_ud77ra.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_2
    new_article.user = new_user
    new_article.save!

  # 3 article
  author_13 = Author.create!(name: "Lucy Bourton")
  new_article = Source.new(
    title: "The system of learning new creative skills is broken – so how can it evolve?",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678559/3.3_zfzktq.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_3
    new_article.user = new_user
    new_article.save!

  # 4 article
  author_14 = Author.create!(name: "Ed Baldwin")
  new_article = Source.new(
    title: "Busy is the New Stupid",
    publishing_year: "2016",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678263/4.4_mgmj9a.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_4
    new_article.user = new_user
    new_article.save!

  # 5 article
  author_15 = Author.create!(name: "Katya Andresen")
  new_article = Source.new(
    title: "What's missing in leadership is what's missing in ourselves",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678266/5.5_kpynop.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_5
    new_article.user = new_user
    new_article.save!

  # 6 article
  author_6 = Author.create!(name: "Charlotte Alter, Suyin Haynes, Justin Worland")
  new_article = Source.new(
    title: "Time 2019 Person of the Year: Greta Thunberg",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678345/6.6_dqhwii.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_6
    new_article.user = new_user
    new_article.save!

  # 7 article
  author_7 = Author.create!(name: "Eddie S. Glaude, Jr.")
  new_article = Source.new(
    title: "The History That James Baldwin Wanted America to See",
    publishing_year: "2020",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678314/7.7_sidtba.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_7
    new_article.user = new_user
    new_article.save!

  # 8 article
  author_8 = Author.create!(name: "Lauren Martin")
  new_article = Source.new(
    title: "Patti Smith’s Advice On Following The Road Less Traveled",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678278/7.7_tnhw34.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_8
    new_article.user = new_user
    new_article.save!

  # 9 article
  author_9 = Author.create!(name: "Laura M. Halson")
  new_article = Source.new(
    title: "Are We Living in a Post-Happiness World?",
    publishing_year: "2019",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678282/9.9_jqb6hv.png")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_9
    new_article.user = new_user
    new_article.save!

  # 10 article
  author_10 = Author.create!(name: "Lauren Martin")
  new_article = Source.new(
    title: "Bethenny Frankel: 14 Rules For Getting Everything You Want",
    publishing_year: "2017",
    category: "article")
    image = URI.open("https://res.cloudinary.com/dwrrzkqpc/image/upload/v1595678288/10.10_r3o5uy.jpg")
    new_article.photo.attach(io: image, filename: "#{new_article.title}", content_type: 'image/png')

    new_article.author = author_10
    new_article.user = new_user
    new_article.save!

#highlights
# 1 highlight
  highlight_1 = Highlight.new(
    content: "For we have thought the longer thoughts
And gone the shorter way.
And we have danced to devils' tunes, Shivering home to pray;
To serve one master in the night,
Another in the day.",
    page: 20)

   # highlight_1.tag_list ="poetry"
    highlight_1.source = new_book_1
    highlight_1.user = new_user
    highlight_1.save!

# 2 highlight
  highlight_2 = Highlight.new(
    content: "So allowing ourselves to be bored is not as simple as just managing our screen time better. We need to change our attitude to boredom if we are to help it fuel our creativity. “You need to give yourself permission first and foremost,” says Deakin from Huge. “And allow yourself to say, ‘Fuck you, world, I’m busy getting bored.”",
    page: 210)

   # highlight_2.tag_list ="feminism"
    highlight_2.source = new_book_1
    highlight_2.user = new_user
    highlight_2.save!

# 3 highlight
highlight_3 = Highlight.new(
  content: "Learning doesn’t always have to be intentional, but can be something that just happens naturally",
  page: 89)

 # highlight_3.tag_list ="politics"
  highlight_3.source = new_book_1
  highlight_3.user = new_user
  highlight_3.save!

# 4 highlight
highlight_4 = Highlight.new(
  content: "No matter what you’ve done, even if you regret it, even if you don’t know what the hell to do next, every single thing that happens to you has the potential to open new doors. It happened for a reason—and it’s still taking you somewhere, even if you can’t see it right now.",
  page: 2)

  #highlight_4.tag_list ="biography"
  highlight_4.source = Source.all.sample
  highlight_4.user = new_user
  highlight_4.save!

# 5 highlight
  highlight_5 = Highlight.new(
    content: "Today, researchers find it troubling that businesses have co-opted joy to market soda pop, productivity planners and storage containers. “Contentment is the next growth industry,” Dr. Keltner said. “Marketers will tell you buying things will make you happy even though the opposite is true.”",
    page: 210)

   # highlight_5.tag_list ="race"
    highlight_5.source = Source.all.sample
    highlight_5.user = new_user
    highlight_5.save!

# 6 highlight
  highlight_6 = Highlight.new(
    content: "Global warming may seem like a distended morality tale playing out over several centuries and inflicting a kind of Old Testament retribution on the great-great-grandchildren of those responsible, since it was carbon burning in eighteenth-century England that lit the fuse of everything that has followed. But that is a fable about historical villainy that acquits those of us alive today—and unfairly. The majority of the burning has come since the premiere of Seinfeld. Since the end of World War II, the figure is about 85 percent. The story of the industrial world’s kamikaze mission is the story of a single lifetime—the planet brought from apparent stability to the brink of catastrophe in the years between a baptism or bar mitzvah and a funeral.",
    page: 14)

   # highlight_6.tag_list ="climat"
    highlight_6.source = Source.all.sample
    highlight_6.user = new_user
    highlight_6.save!

# 7 highlight
  highlight_7 = Highlight.new(
    content: "Although black people had been fighting for freedom “for more than a hundred years,” the only thing that was “explicitly certain is that the struggle for it will endure.”",
    page: 165)

   # highlight_7.tag_list ="science"
    highlight_7.source = Source.all.sample
    highlight_7.user = new_user
    highlight_7.save!

# 8 highlight
  highlight_8 = Highlight.new(
    content: "It doesn’t matter what anybody else thinks of your life. All that matters is what you think of it, and what you decide to make of it.",
    page: 1)

    #highlight_8.tag_list ="politics"
    highlight_8.source = Source.all.sample
    highlight_8.user = new_user
    highlight_8.save!

# 9 highlight
  highlight_9 = Highlight.new(
    content: "Legal standards for retaliation – one of the biggest fears behind non-reporting – need to change to protect [women reporting crimes]. Culturally, it is still said “women allege” or “claim” they were sexually assaulted. Those accused “deny what was alleged”. What if we changed the emphasis and said that survivors “report” and the accused “alleges” or “claims” it didn’t happen?",
    page: 4)

    #highlight_9.tag_list ="#psychology"
    highlight_9.source = Source.all.sample
    highlight_9.user = new_user
    highlight_9.save!

# 10 highlight
  highlight_10 = Highlight.new(
    content: "Leaders are in love – in love with the people who do the work, with what their organizations practice, and with their customers.",
    page: 10, my_note: "My note #sociology")

    highlight_10.source = Source.all.sample
    highlight_10.user = new_user
    highlight_10.save!

  highlight_11 = Highlight.new(
    content: "How might I gather all my highlights from Kindle and put them into a personal online archive, where I can share, browse, and reflect on everything I’ve read?",
    page: 15, my_note: "#kindle")

    highlight_11.source = Source.all.sample
    highlight_11.user = new_user
    highlight_11.save!

  highlight_12 = Highlight.new(
    content: "I wanted total ownership and database-level access to my raw book and highlight data so that I could perform more advanced analysis and improvements.",
    page: 25, my_note: "#kindle")

    highlight_12.source = Source.all.sample
    highlight_12.user = new_user
    highlight_12.save!

  highlight_13 = Highlight.new(
    content: "One of the original reasons I wanted a place to collect my highlights was because I felt it would help me better remember what I read and retain those learnings.",
    page: 9, my_note: "#kindle")

    highlight_13.source = Source.all.sample
    highlight_13.user = new_user
    highlight_13.save!

  highlight_14 = Highlight.new(
    content: "We want to communicate those with our user. We also want to provide links for the user to navigate our Devise pages.",
    page: 63, my_note: "#devise")

    highlight_14.source = Source.all.sample
    highlight_14.user = new_user
    highlight_14.save!

  highlight_15 = Highlight.new(
    content: "You should see a “Sign in with Facebook” link has automatically been added to your unauthenticated views. If you did everything correctly, you should be signed in!",
    page: 69, my_note: "#devise")

    highlight_15.source = Source.all.sample
    highlight_15.user = new_user
    highlight_15.save!

  highlight_16 = Highlight.new(
    content: "Nokogiri is the Japanese translation for a fine-toothed saw used in woodwork. It’s also a Ruby gem that allows us to parse HTML, ripping through a massive string and allowing us to access the finer nested nodes within it.",
    page: 19, my_note: "#nokogiri")

    highlight_16.source = Source.all.sample
    highlight_16.user = new_user
    highlight_16.save!

  highlight_17 = Highlight.new(
    content: "If you haven’t added the Nokogiri gem to your Gemfile, bundled, and ran your ActiveRecord migrations, do that now. Time for the fun part.",
    page: 20, my_note: "#nokogiri")

    highlight_17.source = Source.all.sample
    highlight_17.user = new_user
    highlight_17.save!

  highlight_18 = Highlight.new(
    content: "I know it looks like there’s a lot going on here, but the logic in this method is actually quite simple.",
    page: 82, my_note: "#simple")

    highlight_18.source = Source.all.sample
    highlight_18.user = new_user
    highlight_18.save!

  highlight_19 = Highlight.new(
    content: "Ready Steady ??.. Let’s do it.",
    page: 12)

    highlight_19.source = Source.all.sample
    highlight_19.user = new_user
    highlight_19.save!

  highlight_20 = Highlight.new(
    content: "If you’re new to developing Rails applications, you’ve probably come across the term N + 1 queries.",
    page: 197, my_note: "#queries")

    highlight_20.source = Source.all.sample
    highlight_20.user = new_user
    highlight_20.save!

new_user.favorite(highlight_1)
new_user.favorite(highlight_6)
new_user.favorite(highlight_10)
new_user.favorite(highlight_16)
new_user.save!

puts "Done!"
