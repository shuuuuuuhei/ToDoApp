# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  content    :text
#  limit      :datetime
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_tasks_on_board_id  (board_id)
#  index_tasks_on_user_id   (user_id)
#
require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
