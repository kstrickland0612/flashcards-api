class CardSerializer < ActiveModel::Serializer
  attributes :id, :category, :front, :back, :image
  has_one :user
end
