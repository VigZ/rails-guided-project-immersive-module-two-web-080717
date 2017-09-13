class CreateReactions < ActiveRecord::Migration[5.1]
  def change
    create_table :reactions do |t|
      t.integer :user_id
      t.integer :picture_id
      t.string :reaction_key
    end
  end
end
