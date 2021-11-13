require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validates' do
    subject { User.new name: 'John Doe' }

    before { subject.save }

    it 'should not be blank' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'cannot have a negative quantity of posts' do
      subject.posts_counter = -1
      expect(subject).to_not be_valid
    end
  end

end
