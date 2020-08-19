class CardSerializer < ActiveModel::Serializer
  attributes :id, :answer, :question, :instruction, :deck
  
end
