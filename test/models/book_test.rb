# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  author      :string(255)
#  description :string(255)
#  amazon_id   :string(255)
#  rating      :integer
#  finished_on :date
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
