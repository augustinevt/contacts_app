require('rspec')
require('email')

describe 'Email' do
  describe 'Email#initialize' do
    it 'should return an email attribute for a newly created email object' do
      new_email = Email.new({name: 'work', email: 'dilly@gmail.com'})
      expect(new_email.email()).to eq('dilly@gmail.com')
    end
  end
end
