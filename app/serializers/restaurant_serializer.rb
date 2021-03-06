class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :phone, :email, :image_url
  belongs_to :location
  has_many :cuisines
  has_many :comments, serializer: RestaurantCommentSerializer
end
