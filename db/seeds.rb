User.create! name: "Steven", email: "steven@steven.com", password: "password"
User.create! name: "John", email: "johnjohn@john.com", password: "password"
User.create! name: "Jenny", email: "jenny@jenny.com", password: "password"

Quit.create! text: "[Foundation] is the best science fiction that I've ever read! Everyone should read it!", user: User.find(1)
Quit.create! text: "[The Clash of Civilization over the Elevator in Piazza Vittorio] is an interesting book. Highly recommend.", user: User.find(2)
