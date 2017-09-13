class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :picture

  def self.reaction_pictures
    {"happy" => "http://piq.codeus.net/static/media/userpics/piq_61044.png",
      "sad" => "http://piq.codeus.net/static/media/userpics/piq_61044.png",
      "excited" => "http://piq.codeus.net/static/media/userpics/piq_61044.png",
      "angry" => "http://piq.codeus.net/static/media/userpics/piq_61044.png",
      "mustardcat" => "http://piq.codeus.net/static/media/userpics/piq_61044.png"
    }
  end
end
