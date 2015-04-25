Killer diller
=====

# How to play

## Roles

The original idea is to create a mafia game.
Instruction page: http://www.group-games.com/stationary-games/mafia-game.html
There are five roles
### Mafia
Keep secret that they are Mafia and blend in with the Townspeople. For them to win the game, they want to eliminate the townspeople one by one each round but not to get eliminiated (voted off) during the day.
### Police
Try to figure out who is guilty of being a Mafia and who is innocent. Thus, thir goal is to help the townspeople vote correctly in who to eliminate during the day (the good people, not the bad!). They generally want to keep their identity secret so that the Mafia cannot eliminate them early.
### Doctor (optional)
Try to protect people during the night. He or she can also be selfish and choose to protect self during the night.
### Townspeople
Figure out who is a member of the secret Mafia, and to eliminate them fro mthe town during the day.

## Scenes

### Nighttime
1. "It is nighttime, so everyone please go to sleep." (Everyone has black screen for night scene.)
2. "Mafia, please wake up." (Only the mafia can see other players and choose a person to eliminate by clicking on that person's name.)
3. "Mafia, please go to sleep." (Mafia have black screen.)
4. "Police, please wake up." (Police can see other players and click on the person who they suspect as a member of the Mafia. They will be informed whether that person is a Mafia or not.)
5. "Police, please go to sleep." (Police have black screen.)
6. "Doctor, please wake up and choose someone who you'd like to protect." (Doctor, if still alive, will see other members and choose a person to protect for that day.)
7. "Doctor, please go to sleep." (Black screen for the doctor.)
8. "It's morning. Everyone please wake up." (Everyone can see other members and enter daytime.)

### Daytime Update
The nnarator annoucnes the person who was eliminated, unless the doctor correctly selected the person who was targeted by the Maifa for the night. The person who was eliminated will quietly leave the circle. This person may not speak for the remainder of the entire game, but he or she may now keep watching even during nighttime.

###Daytime Discussion/Voting
The townspeople (along with the Mafia and Police who may pretend to be townspeople) then nominate and vote on people who they suspect is a Mafia. Each person nominated may make a defense and pleade their case. The person receiving a majority vote (50% or above) is eliminated. After someone is voted off, the day is over. The day moay also end without any eliminations if the entire group decides to do so. The day ends, and the pattern starts again. (Nighttime, Daytime Update, Daytime Discussion/Voting.)

## How to win
THe police or townspeople win if they successfully eliminate all mafia members. The mafia win if they successfully eliminate all the townspeople. This group gmae involves lots of strategy, knowing how and when to reveal your identity, who to trust, etc.

# How to run file locally



```ruby
bundle install
rake db:setup   # if failed, try: bundle exec rake db:setup
rails server    # or rails s

```