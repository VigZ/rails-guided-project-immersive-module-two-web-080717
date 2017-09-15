class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :picture
  validates :content, presence: true
  validates :content, length: {maximum: 200, message: "Comment too long! Maximum 200 characters."}
  validate :profanity_filter

  private

  def profanity_filter
    bad_words = ["fuck", "Fuck", "shit", "Shit", "dick", "Dick", "cock", "Cock", "cunt", "Cunt"]
    self.content.split(" ").each do |word|
      if bad_words.include?(word)
        errors.add(:content, "Profanity will not be tolerated on PicShare. Please comment again.")
      end
    end
  end

end
