User.create! name: "Steven", email: "steven@steven.com", password: "password"
User.create! name: "John", email: "johnjohn@john.com", password: "password"
User.create! name: "Jenny", email: "jenny@jenny.com", password: "password"

#Quit.create! text: "[Foundation] is the best science fiction that I've ever read! Everyone should read it!", user: User.find(1)
#Quit.create! text: "[The Clash of Civilization over the Elevator in Piazza Vittorio] is an interesting book. Highly recommend.", user: User.find(2)

Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')

Book.create!([{
    title: "All the Light We Cannot See: A Novel",
    author: "Anthony Doerr",
    description: "From the highly acclaimed, multiple award-winning Anthony Doerr, the beautiful, stunningly ambitious instant New York Times bestseller about a blind French girl and a German boy whose paths collide in occupied France as both try to survive the devastation of World War II.",
    amazon_id: "1476746583",
    rating: 5,
    finished_on: 10.days.ago,
      genres: [fiction]
},
{
    title: "Inside Apple: How America's Most Admired--and Secretive--Company Really Works",
    author: "Adam Lashinsky",
    description: "I love this book! INSIDE APPLE reveals the secret systems, tactics and leadership strategies that allowed Steve Jobs and his company to churn out hit after hit and inspire a cult-like following for its products.",
    amazon_id: "1455512168",
    rating: 4,
    finished_on: 5.days.ago,
    genres: [non_fiction]
},
{
    title: "Clash of Civilization over the ELevator in Piazza Vittorio",
    author: "Amara Lakhous",
    description: "A small culturally mixed community living in an apartment building in the center of Rome is thrown into disarray when one of the tenants is murdered. As each of the victim's neighbors is questioned by the police, readers are offered an all-access pass into the most colorful neighborhoold in contemporary Rome. Each character takes his or her turn 'giving evidence,' recounting his or her story - the drama of racial identity, the anxieties and daily humiliations born of a life spent on society's margins, but also the hilarious imbrolios that are inevitable in this melting pot of cultures.",
    amazon_id: "1933372613",
    rating: 5,
    finished_on: nil,
    genres: [fiction]
},
{
  title: "Mindstorms",
  author: "Seymour A. Papert",
  description: "Although this book focuses on the cognitive advantages to having children use technology from an early age, it is also an in depth look at how people can learn for themseves. As someone who was often distracted and bored at times during school, Mindstorms highlights some of the reasoning behind that feeling and what we can do as teachers to help minimize it.",
  amazon_id: "0465046746",
  rating: 1,
  finished_on: nil,
  genres: [non_fiction]
}
])
p "Created #{Book.count} books."

