require 'rails_helper'
RSpec.describe 'showing the user\'s post', type: :feature do
  describe 'show page:' do
    before do
      visit new_user_session_path
      @caleb = User.create(name: 'caleb', bio: 'me', email: 'caleb@gmail.com', password: '111111',
                           password_confirmation: '111111', confirmed_at: Date.today)
      @peter = User.create(name: 'peter', bio: 'peter is a backend developer', email: 'peter@mail.com', password: '123456',
                          password_confirmation: '123456', confirmed_at: Date.today)

      5.times do |i|
        post = Post.create(title: "Post ##{i + 1}", text: "#{i + 1}Lorem ipsum dolor set amet.", user: @caleb)
        Comment.create(text: 'Random comment', post: post, user: @caleb)
        Comment.create(text: 'Random comment', post: post, user: @peter)
      end

      fill_in 'Email', with: 'caleb@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
      click_link 'caleb'
      click_link 'See all post'
      click_link 'Post #1'
    end

    it 'I can see the post\'s title.' do
      expect(page).to have_content('Post #1')
    end

    it 'I can see who wrote the post.' do
      expect(page).to have_content('Post #1')
      expect(page).to have_content('by')
      expect(page).to have_content('caleb')
    end

    it 'I can see how many comments it has.' do
      expect(page).to have_content('Comments: 2')
    end

    it 'I can see how many likes a post has.' do
      expect(page).to have_content('Likes: 0')
    end

    it 'I can see the post body.' do
      expect(page).to have_content('1Lorem ipsum dolor set amet.')
    end

    it 'I can see the username of each commentor.' do
      expect(page).to have_content('peter')
      expect(page).to have_content('caleb')
    end
    it 'I can see the comment each commentor left' do
      expect(page).to have_content('peter: Random comment')
      expect(page).to have_content('caleb: Random comment')
    end
  end
end
