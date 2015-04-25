# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  role                   :integer          default(0)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [ :mafia, :police, :doctor, :townspeople, :moderator ]
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quits

  validates :name, presence: true
    
  has_many :follows, foreign_key: :follower_id
  has_many :followed_users, through: :follows, source: :followed
  has_many :followed_users_quits, through: :followed_users, source: :quits 
  # has_many :followed_users_readings, through: :followed_users, source: :readings 
end
