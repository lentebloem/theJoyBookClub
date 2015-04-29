# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  author      :string(255)
#  description :string(255)
#  amazon_id   :string(255)
#  ratings     :integer
#  finished_on :date
#  created_at  :datetime
#  updated_at  :datetime
#

class Book < ActiveRecord::Base

  has_many :book_genres
  has_many :genres, through: :book_genres

  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
  scope :filter, ->(name){
    joins(:genres).where('genres.name = ?', name) if name.present?
  }

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected
    def set_keywords
      self.keywords = [title, author, description].map(&:downcase).join(' ')
    end
end
