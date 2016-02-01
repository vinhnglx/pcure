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

class Product < ActiveRecord::Base
  # Validations
  validates :title, :price, presence: true

  # Uploader
  mount_uploader :photo, PhotoUploader
end
