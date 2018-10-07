class Like < ApplicationRecord
  belongs_to :user
  # Micropost クラスを参照するものだと明示
  belongs_to :like, class_name: 'Micropost'

  validates :user_id, presence: true
  validates :like_id, presence: true
end
