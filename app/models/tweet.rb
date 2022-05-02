class Tweet < ApplicationRecord
  validates :text, presence: true
  validates :text, length: { maximum: 140 }, allow_blank: true
end
