class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :outer
      t.string :tops
      t.string :pants
      t.string :shoes
      t.string :hat
      t.string :accessory
      t.date :posted_date
      t.integer :season_id
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
