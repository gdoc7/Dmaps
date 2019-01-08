require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation' do
    it ' name presence'do
      user = User.new(diretion: 'caracas', email: 'gabriel@gmail.com', date_of_birth: '1996-10-07 00:00:00', password: '12345678', password_confirmation:'12345678').save
      expect(user).to be(false)
    end
    it ' direction presence' do
      user = User.new(name:'gabriel', email: 'gabriel@gmail.com',date_of_birth: '1996-10-07 00:00:00', password: '12345678', password_confirmation:'12345678').save
      expect(user).to be(false)
    end
    it ' email presence'do
      user = User.new( name:'gabriel', diretion: 'caracas', date_of_birth: '1996-10-07 00:00:00', password: '12345678', password_confirmation:'12345678').save
      expect(user).to be(false)
    end
    it ' date_of_birth presence' do
      user = User.new(name:'gabriel', diretion: 'caracas', email: 'gabriel@gmail.com', password: '12345678', password_confirmation:'12345678').save
      expect(user).to be(false)
    end
    it ' password presence'do
      user = User.new(name:'gabriel', diretion: 'caracas', email: 'gabriel@gmail.com', date_of_birth: '1996-10-07 00:00:00').save
      expect(user).to be(false)
    end
    it ' should save successfully' do
      user = User.new(name: 'gabriel', diretion: 'caracas', email: 'gabriel@gmail.com', date_of_birth: '1996-10-07 00:00:00', password: '12345678', password_confirmation:'12345678').save
      expect(user).to be(true)
    end
  end
end
