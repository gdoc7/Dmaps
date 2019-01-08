require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'validation ' do
    it ' latitude presence ' do
      order = Order.new(user_id: '1', longitude: '123.345', address: 'test address').save
      expect(order).to be(false)
    end
    it 'longitude presence'do
      order = Order.new(user_id: '1', latitude: '12.3445', address: 'test address').save
      expect(order).to be(false)
    end
    it 'addres presence ' do
      order = Order.new(user_id: '1', longitude: '10.234').save
      expect(order).to be(false)
    end
  end
end