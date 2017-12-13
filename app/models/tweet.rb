class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_tags
  has_many :tags, through: :tweet_tags
  validates :message, presence: true, length: {maximum: 280, too_long: "That's too many characters!"}
end
