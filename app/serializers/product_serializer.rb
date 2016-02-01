# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  price       :float
#  photo       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :photo
end
