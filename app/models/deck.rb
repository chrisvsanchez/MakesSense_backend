class Deck < ApplicationRecord
  belongs_to :user
  has_many :cards 
  has_many :cards,  dependent: :destroy 
end
