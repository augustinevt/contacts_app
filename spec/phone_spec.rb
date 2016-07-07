require('rspec')
require('phone')

describe 'Phone' do
  describe 'Phone#initialize' do
    it 'should return number attribute from newly created phone object' do
      new_phone = Phone.new({name: 'work', number: '4356541234'})
      expect(new_phone.number()).to eq('4356541234')
    end
  end
end
