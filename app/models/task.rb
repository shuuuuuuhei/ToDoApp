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
class Task < ApplicationRecord
    has_one_attached :eyecatch
    has_many :comments, dependent: :destroy

    belongs_to :user
    belongs_to :board

    validates :title, presence: true
    validates :content, presence: true
    validates :limit, presence: true


    def comment_count
        comments.count
    end

    def comment_user
        comments.user
    end
end
