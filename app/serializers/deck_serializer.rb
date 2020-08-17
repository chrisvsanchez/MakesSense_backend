class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :cards
end
