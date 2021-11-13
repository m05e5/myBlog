require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validates' do
    subject { Post.new title: 'Starting validation', user_id: 1 }

    before { subject.save }

    it 'The title should not be bigger than' do
      subject.title = 'hello' * 250
      expect(subject).to_not be_valid
    end

    it 'should have a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'The likes number should not be negative' do
      subject.likes_counter = -2
      expect(subject).to_not be_valid
    end

    it 'should not have a blank title' do
      subject.title = ' '
      expect(subject).to_not be_valid
    end
  end
end
