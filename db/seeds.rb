# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Tags:
newsTag = Tag.create(name: "News", description: "All news")
toolTag = Tag.create(name: "Tool", description: "News about tool")
techTag = Tag.create(name: "Tech", description: "News about tech")

articleFeatured = Article.create(title: "Create a website ? The 22 best website creator", 
    body: "In a world of digital, success pass with internet, the creation of a website is important. We present to you some tool for creating website...", 
    shortdesc: "In a world of digital, success pass with internet, the creation of a website is important. We present to you some tool for creating website...", 
    featured: true, 
    image_url: "https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg",
)

articleFeatured.tags << newsTag

articleOne = Article.create(title: "Apple Vision Pro: The first headset of augmented reality from Apple", 
    body: "Discover the new Apple Vision Pro, the spacial computer. Mixt reality, 3D interface, immersive experience, it's the future ?", 
    shortdesc: "Discover the new Apple Vision Pro, the spacial computer. Mixt reality, 3D interface, immersive experience, it's the future ?", 
    featured: false, 
    image_url: "https://cdn.pixabay.com/photo/2014/10/30/00/28/apple-inc-508812_1280.jpg",
)

articleOne.tags << newsTag
articleOne.tags << techTag

articleTwo = Article.create(title: "Top 10 of best extensions for ChatGPT", 
    body: "At this time of internet, ChatGPT from OpenAi is incontournable. It's become the first AI search in the market and today...", 
    shortdesc: "At this time of internet, ChatGPT from OpenAi is incontournable. It's become the first AI search in the market and today...", 
    featured: false, 
    image_url: "https://cdn.pixabay.com/photo/2017/03/23/09/34/artificial-intelligence-2167835_1280.jpg",
)

articleTwo.tags << newsTag
articleTwo.tags << techTag

articleThree = Article.create(title: "How to protect you from phishing ?", 
    body: "We know there is a problem with phishing, and if you don't what's phishing, just read this article, and protect you using our methods. As you know already...", 
    shortdesc: "We know there is a problem with phishing, and if you don't what's phishing, just read this article, and protect you using our methods. As you know already...", 
    featured: false, 
    image_url: "https://cdn.pixabay.com/photo/2017/11/19/23/56/hacking-2964100_1280.jpg",
)

articleThree.tags << newsTag
articleThree.tags << toolTag
articleThree.tags << techTag