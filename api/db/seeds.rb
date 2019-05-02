require 'faker'
#20 users
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password1"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password2"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password3"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password4"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password5"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password6"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password7"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password8"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password9"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password10"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password11"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password12"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password13"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password14"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password15"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password16"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password17"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password18"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password19"))
  User.create(username: Faker::Artist.unique.name, email: Faker::Internet.email, password_digest: BCrypt::Password.create("password20"))

#30 podcasts
Podcast.create(name: "Binge Mode: Game of Thrones", description: "Join The Ringer’s Mallory Rubin and Jason Concepcion as they take their signature deep dives, ranging from 'Game of Thrones,' 'Harry Potter,' and everywhere in between.")
Podcast.create(name: "Murderville", description:"When a brutal murder rocks a small Southern town, residents and police are shocked. Could the new guy in town be the one who who did it? Yes, the cops say, he is. Case solved. But then another murder happens. And another. In the end: four bodies, two convictions, and one man in jail for a crime he likely did not commit. Welcome to Murderville, Georgia. Investigative reporters Liliana Segura and Jordan Smith uncover what happens when law enforcement locks up their first suspect, leaving another man free to kill. From The Intercept and Topic Studios.")
Podcast.create(name: "To Live and Die in LA", description:"Presented by Neil Strauss, To Live and Die in LA deep dive into the mysterious disappearance of 25-year-old Adea Shabani, an aspiring actress and model who vanished without a trace from her apartment complex near Hollywood’s famous Walk of Fame.”")
Podcast.create(name: "Billboard on Broadway", description:"Billboard senior editor Rebecca Milzoff chats with Broadway's current stars, discussing today's most exciting musical theater and its overlap with pop music.")
Podcast.create(name: "Techish", description:"A podcast by two millennials talking about all things tech, pop culture, and life. Starring tech founders Abadesi Osunsade and Michael Berhane.")
Podcast.create(name: "It's Britney, Bitch!", description:"A Britney Spears Podcast celebrating 20 years of the Living Legend, Britney Jean Spears.")
Podcast.create(name: "Reasons to be Cheerful with Ed Miliband and Geoff Lloyd", description:"A podcast about ideas. Former Labour Party leader Ed Miliband, and Sony Award-winning radio host Geoff Lloyd talk to smart thinkers from around the world.")
Podcast.create(name: "On Being with Krista Tippett", description:"A Peabody Award-winning public radio show and podcast. What does it mean to be human? How do we want to live? And who will we be to each other? Each week a new discovery about the immensity of our lives. Hosted by Krista Tippett.")
Podcast.create(name: "Intelligence Squared", description:"Intelligence Squared is the world’s leading forum for debate and intelligent discussion. Live and online we take you to the heart of the issues that matter, in the company of some of the world’s sharpest minds and most exciting orators.")
Podcast.create(name: "FYI - For Your Innovation", description: "The FYI - For Your Innovation Podcast offers an intellectual discussion on recent developments across disruptive innovation—driven by research, news, controversies, companies, and technological breakthroughs. Hosted by ARK Invest analyst James Wang, ARK and guests provide a unique perspective on how to best understand disruptive innovation.")
Podcast.create(name: "Kwik Brain with Jim Kwik", description: "Do you want to learn, read, and remember anything in hald the time? Jim Kwik, the founder of Kwik Learning, is a world expert in speed-reading, memory improvement, brain performance, and accelerated learning. After a childhood brain injury left him learning-challenged, Jim created strategies to dramatically enhance his mental performance.")
Podcast.create(name: "Women Tech Charge", description:"Hosted by Dr Anne-Marie Imafidon, the CEO of stemettes.org, the series looks at the incredible women revolutionising our lives through technology.")
Podcast.create(name: "The Infinity Monkey Cage", description:"The Infinite Monkey Cage is a BBC Radio 4 comedy and popular science series. Hosted by physicist Brian Cox and comedian Robin Ince, The Independent described it as a 'witty and irreverent look at the world according to science'.")
Podcast.create(name: "Exponential View with Azeem Azhar", description: "How AI and other exponential technologies are transforming business and society.")
Podcast.create(name: "The Tim Ferriss Show", description:"In each episode, Tim Ferriss deconstructs world-class performers from eclectic areas (investing, sports, business, art, etc.) to extract the tactics, tools, and routines you can use.  This includes favorite books, morning routines, exercise habits, time-management tricks, and much more")
Podcast.create(name: "Freakonomics Radio", description:"Freakonomics Radio is an American public radio program which discusses socioeconomic issues for a general audience.")
Podcast.create(name: "Science VS", description:"Science Vs takes on fads, trends, and the opinionated mob to find out what’s fact, what’s not, and what’s somewhere in between.")
Podcast.create(name: "Inside Story", description:"Al Jazeera journalists and guests dissect and discuss the day's top story.")
Podcast.create(name: "Click", description:"Technological and digital news from around the world.")
Podcast.create(name: "Spark Joy Podcast", description: "Welcome to Spark Joy, co-hosted by certified KonMari Consultants Kristyn Ivey and Karin Socci. Spark Joy is the podcast dedicated to celebrating the KonMari Method and the transformative power of surrounding yourself with joy; and letting go of the all the rest.")
Podcast.create(name: "Brexitcast", description: "Laura Kuenssberg and Katya Adler join Adam Fleming and Chris Mason for some geeky gossip about Brexit from Westminster and Brussels.")
Podcast.create(name: "My Dad Wrote A Porno", description: "Imagine if your dad wrote a dirty book. Most people would try to ignore it - but not Jamie Morton. Instead, he decided to read it to the world in this groundbreaking comedy podcast. With the help of his best mates, James Cooper and Alice Levine, Jamie reads a chapter a week and discovers more about his father than he ever bargained for.")
Podcast.create(name: "Pardon My Take", description: "Big Cat & PFT Commenter deliver the loudest and most correct sports takes in the history of the spoken word. Daily topics, guests, and an inability to tell what the hosts might be doing will make this your new favorite sports talk show. This is a podcast that will without a doubt change your life for the better- guaranteed, or your money back. *Pretend a reggaeton air horn is going off right now*")
Podcast.create(name: "The No Chill Podcast", description:"Gilbert Arenas offers up his unique perspective on all things basketball, pop culture and whatever else is on his mind.")
Podcast.create(name: "Crazy Love Podcast", description:"Audio Podcast with Francis Chan, best-selling author of Crazy Love, Forgotten God, Erasing Hell, Multiply, and You and Me Forever. Currently, he is planting churches in the San Francisco area. For more information visit: crazylove.org")
Podcast.create(name: "For the Love with Jen Hatmaker", description:"The majority of our joys, struggles, thrills, and heartbreaks relate to people, beginning first with ourselves and then the people we came from, married, birthed, live by, live for, go to church with, don’t like, don’t understand, fear, struggle with, compare ourselves to, and judge. People are the best and worst thing about the human life. Jen Hatmaker knows this all too well, and so she reveals how to practice kindness, grace, truthfulness, vision, and love to ourselves and those around us. By doing this, For the Love leads our generation to reimagine Jesus’ grace as a way of life, and it does it in a funny yet profound manner that Christian readers will love. Along the way, Hatmaker shows readers how to reclaim their prophetic voices and become Good News again to a hurting, polarized world.")
Podcast.create(name: "The Panda Pod", description:"The Panda Pod is a monthly podcast series hosted by Carter Roberts, President and CEO of WWF.")
Podcast.create(name: "Chompers", description: "A fun-filled twice-daily podcast to keep kids brushing teeth.")
Podcast.create(name: "Time to Eat the Dogs", description:"A podcast about science, history, and exploration. Michael Robinson interviews scientists, journalists, and adventurers about life at the extreme.")
Podcast.create(name: "You Made It Weird with Pete Holmes", description:"Everybody has secret weirdness, Pete Holmes gets comedians to share theirs.")
#60 episodes
8.times do
  Episode.create(title: Faker::Marketing.buzzwords, description: Faker::Hipster.paragraph, podcast_id: rand(1..30), number: rand(4..90), length: rand(1..90))
end
14.times do
  Episode.create(title: Faker::Marketing.buzzwords, description: Faker::Company.bs, podcast_id: rand(1..30), number: rand(4..90), length: rand(1..90))
end
18.times do
  Episode.create(title: Faker::Books::Lovecraft.tome, description: Faker::Books::Lovecraft.sentence(2), podcast_id: rand(1..30), number: rand(4..90), length: rand(1..90))
end
3.times do
  Episode.create(title: Faker::Marketing.buzzwords, description: Faker::Quote.matz, podcast_id: rand(1..30), number: rand(4..90), length: rand(1..90))
end
9.times do
  Episode.create(title: Faker::Marketing.buzzwords, description: Faker::GreekPhilosophers.quote, podcast_id: rand(1..30), number: rand(4..90), length: rand(1..90))
end
8.times do
  Episode.create(title: Faker::Marketing.buzzwords, description: Faker::Books::Lovecraft.sentence(4), podcast_id: rand(1..30), number: rand(4..90), length: rand(1..90))
end
#16 categories
  Category.create(name: "Arts", description: "All the thoughts that you need to get creative and expressive.")
  Category.create(name: "Business", description: "Helps you build the next successful business.")
  Category.create(name: "Comedy", description: "Always laugh when you can, it is cheap medicine.")
  Category.create(name: "Education", description: "Be smarter, more intelligent and a life-long learner.")
  Category.create(name: "Games and Hobbies", description: "Games and hobbies are an important part of everyone's life.")
  Category.create(name: "Government and Organisations", description: "Government and organisations tell us what they have been up to.")
  Category.create(name: "Health", description: "Let's look after the wellbeing of our body and mind!")
  Category.create(name: "Kids and Family", description: "Start off the little ones early on podcasts.")
  Category.create(name: "Music", description: "Without music, life would be a mistake.")
  Category.create(name: "News and Politics", description: "Always vote for principle, though you may vote alone, and you may cherish the sweetest reflection that your vote is never lost.")
  Category.create(name: "Religion and Spirituality", description: "Just as a candle cannot burn without fire, men cannot live without a spiritual life.")
  Category.create(name: "Science and Medicine", description: "Bad times have a scientific value.")
  Category.create(name: "Society and Culture", description: "Society is inside of man and man is inside society, and you cannot even create a truthfully drawn psychological entity on the stage until you understand his social relations and their power to make him what he is and to prevent him from being what he is not. The fish is in the water and the water is in the fish. - ARTHUR MILLER")
  Category.create(name: "Sports and Recreation", description: "For many, sports may merely be a source of recreation, but for some people, it is a passion, or even a matter of life and death. Good guys are a dime a dozen, but an aggressive leader is priceless. In the end, the game comes down to one thing: man against man. May the best man win.")
  Category.create(name: "Technology", description: "Never trust a computer you can’t throw out a window.— Steve Wozniak")
  Category.create(name: "TV and Film", description: "In case you need a pick-me-up, go down memory lane with these iconic lines from these iconic movies and television shows.")
#60 keywords
20.times do
  Keyword.create(word: Faker::Hacker.noun)
end
9.times do
  Keyword.create(word: Faker::ProgrammingLanguage.name)
end
3.times do
  Keyword.create(word: Faker::Book.author)
end
13.times do
  Keyword.create(word: Faker::Books::Lovecraft.word)
end
15.times do
  Keyword.create(word: Faker::Hipster.word)
end
#44 notes
13.times do
  Note.create(content: Faker::Quote.yoda, episode_id: rand(1..60), user_id: rand(1..20))
end
8.times do
  Note.create(content: Faker::Company.catch_phrase, episode_id: rand(1..60), user_id: rand(1..20))
end
15.times do
  Note.create(content: Faker::Hacker.say_something_smart, episode_id: rand(1..60), user_id: rand(1..20))
end
8.times do
  Note.create(content: Faker::Books::Lovecraft.paragraph(1), episode_id: rand(1..60), user_id: rand(1..20))
end
#40 subscriptions for 20 users/30 podcasts
40.times do
  Subscription.create(user_id: rand(1..20), podcast_id: rand(1..30))
end
#34 favourites for 20 users/60 episodes
34.times do
  Favouritisation.create(user_id: rand(1..20), episode_id: rand(1..60))
end
#60 relationships across 20 users
# 60.times do
#   Followship.create(followed_id: rand(1..20), follower_id: rand(1..20))
# end
#160 keywordisation for 60 episodes and 60 keywords
160.times do
  Keywordisation.create(keyword_id: rand(1..60), episode_id: rand(1..60))
end
50.times do
  Categorisation.create(podcast_id: rand(1..30), category_id: rand(1..16))
end
