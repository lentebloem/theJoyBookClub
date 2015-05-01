The Joy Book Club
=====

How to run locally

```ruby
bundle install
rake db:setup   # if failed, try: bundle exec rake db:setup
rails server    # or rails s

```

Title: The Joy Book Club

Team Members: Biying Liu (Sophia), Daiwei Liu

Demo Link: ____

Idea: A book sharing website.

Models and Description:
####User
has name, email, and many comments and questions
####Book
has title, author, picture, descriptions, rating, finished or not.
####Book_Genre
belongs to a book and a user, serve as a relationship betwee book and user.
#### Features:
Users can log in, create a book, and see other users' books.

Division of Labor: