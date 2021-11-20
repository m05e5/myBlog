require 'rails_helper'
RSpec.describe 'showing the list of user\'s last published posts', type: :feature do
  describe 'index page:' do
    before do
      visit new_user_session_path
      @caleb = User.create(name: 'caleb', bio: 'me', email: 'caleb@gmail.com', password: '111111',
                           password_confirmation: '111111', confirmed_at: Date.today)
      @peter = User.create(name: 'peter', bio: 'Lorem ipsu', email: 'peter@gmail.com', password: '111111',
                           password_confirmation: '111111', confirmed_at: Date.today)
      fill_in 'Email', with: 'peter@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'

      3.times do |i|
        visit '/create_post'
        fill_in 'Title', with: "Post ##{i + 1}"
        fill_in 'Content', with: "#{i + 1}Lorem ipsum dolor set amet."
        click_button 'Submit'
      end
      visit "/users/#{@peter.id}/posts/"
    end

    it 'I can see the user\'s profile picture.' do
      expect(page).to have_css('img.user-img')
    end

    it 'I can see the user\'s username.' do
      expect(page).to have_content('peter')
    end

    it 'I can see the number of posts the user has written.' do
      expect(page).to have_content('Number of posts: 6')
    end

    it 'I can see the post\'s title' do
      expect(page).to have_content('Post #1')
    end

    it 'I can see some of the post\'s body.' do
      expect(page).to have_content('1Lorem ipsum dolor set amet.')
    end

    it 'I can see how many comments a post has.' do
      expect(page).to have_content('Comments: 0')
    end

    it 'I can see how many likes a post has.' do
      expect(page).to have_content('Likes: 0')
    end

    it 'When I click on a post, it redirects me to that post\'s show page.' do
      click_link 'Post #1'
      expect(page).to have_current_path(user_post_path(@peter.posts.first.id))
    end
  end
end
