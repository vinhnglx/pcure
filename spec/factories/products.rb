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

FactoryGirl.define do
  factory :product do
    title { FFaker::Product.product }
    description { FFaker::Lorem.sentence }
    price { Random.new.rand(400) }
    photo { FFaker::Avatar.image }
  end
end
