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

require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'attributes' do
    it 'has title' do
      product = create(:product, title: 'CPU1')
      expect(product).to have_attributes(title: 'CPU1')
    end

    it 'has description' do
      product = create(:product, description: 'Hello world')
      expect(product).to have_attributes(description: 'Hello world')
    end

    it 'has price' do
      product = create(:product, price: 23.33)
      expect(product).to have_attributes(price: 23.33)
    end

    it 'has price' do
      product = create(:product, photo: 'http://example.com/hello.jpg')
      expect(product).to have_attributes(photo: 'http://example.com/hello.jpg')
    end
  end

  context 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :price }
  end

  context 'relations' do
  end
end
