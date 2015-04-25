# == Schema Information
#
# Table name: readings
#
#  id         :integer          not null, primary key
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Reading < ActiveRecord::Base
  belongs_to :user

  validates :text, presence: true
  validates :user_id, presence: true
end
