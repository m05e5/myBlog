require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#update_counter' do
    subject { Comment.first }

    it 'should update the post comments counter' do
      subject.update_counter
      expect(subject.post.comments_counter).to_not be(0)
    end
  end
end
