class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :tweet_id
      t.string :text
      t.string :user_name
      t.string :pic_url

      t.timestamps
    end
  end
end
