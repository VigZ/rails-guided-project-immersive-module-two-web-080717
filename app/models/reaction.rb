class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :picture

  def self.reaction_pictures
    {"happy" => "https://i.imgur.com/vcRzZ6v.png",
      "sad" => "https://i.imgur.com/Qo3nU4S.png",
      "excited" => "https://i.imgur.com/lpgmZAj.png",
      "angry" => "https://i.imgur.com/HfwDXeK.png",
      "lmao" => "https://i.imgur.com/i0YlBEN.png",
      "mustardcat" => "https://i.imgur.com/RW6orH7.png"
    }
  end
end
