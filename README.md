Killer diller
=====

The original idea is to create a mafia game.
Instruction page: http://www.group-games.com/stationary-games/mafia-game.html
There are five roles
# Mafia
Keep secret that they are Mafia and blend in with the Townspeople. For them to win the game, they want to eliminate the townspeople one by one each round but not to get eliminiated (voted off) during the day.
# Police
Try to figure out who is guilty of being a Mafia and who is innocent. Thus, thir goal is to help the townspeople vote correctly in who to eliminate during the day (the good people, not the bad!). They generally want to keep their identity secret so that the Mafia cannot eliminate them early.
# Doctor (optional)
Try to protect people during the night. He or she can also be selfish and choose to protect self during the night.
# Townspeople
Figure out who is a member of the secret Mafia, and to eliminate them fro mthe town during the day.


How to run


```ruby
bundle install
rake db:setup   # if failed, try: bundle exec rake db:setup
rails server    # or rails s

```
