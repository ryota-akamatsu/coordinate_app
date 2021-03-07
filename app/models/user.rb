class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :Posts
         belongs_to :sex
         with_options presence: true do
          validates :nickname
          validates :name
          validates :height
          validates :age
          validates :sex_id

          validates  :name,
          format: {with:/\A[ぁ-んァ-ン一-龥]+\z/}
          validates  :height,
          format: {with:/\A[0-9]+\z/}
          validates  :age,
          format: {with:/\A[0-9]+\z/}
          validates :password,
                 format:{with:/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/}
          validates :sex_id, numericality: { other_than: 1 }
          end
end
