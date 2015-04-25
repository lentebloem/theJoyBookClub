# == Schema Information
#
# Table name: follows
#
#  id          :integer          not null, primary key
#  follower_id :integer
#  followed_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Follow < ActiveRecord::Base
    belongs_to :follower, class_name: :User, foreign_key: :follower_id
    belongs_to :followed, class_name: :User, foreign_key: :followed_id
end
