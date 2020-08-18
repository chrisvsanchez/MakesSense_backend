class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :user_id, :cards
 
end
