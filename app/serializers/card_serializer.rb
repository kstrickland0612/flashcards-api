class CardSerializer < ActiveModel::Serializer
  attributes :id, :category, :front, :back
  has_one :user
end
