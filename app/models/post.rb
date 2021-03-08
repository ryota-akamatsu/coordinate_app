class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  belongs_to :season
  with_options presence: true do
    validates :tops
    validates :pants
    validates :shoes
    validates :season_id

    validates :season_id, numericality: { other_than: 1 } 
  end
end
