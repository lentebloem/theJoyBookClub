# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  author      :string(255)
#  description :text
#  amazon_id   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  rating      :integer
#  finished_on :date
#  keywords    :text
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
