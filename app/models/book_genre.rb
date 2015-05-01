# == Schema Information
#
# Table name: book_genres
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class BookGenre < ActiveRecord::Base
  belongs_to :book
  belongs_to :genre
end
