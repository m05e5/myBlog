require 'rails_helper'
RSpec.describe 'User show page', type: :feature do
  describe 'user show page' do
    before do
      visit new_user_session_path
      @caleb = User.create(name: 'caleb', bio: 'me', email: 'caleb@gmail.com', password: '111111',
                           password_confirmation: '111111', confirmed_at: Date.today)
      User.create(name: 'peter', bio: 'Lorem ipsu', email: 'peter@gmail.com', password: '111111',
                  password_confirmation: '111111', confirmed_at: Date.today)
      fill_in 'Email', with: 'caleb@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'

      3.times do |i|
        visit '/create_post'
        fill_in 'Title', with: "Post ##{i + 1}"
        fill_in 'Content', with: "#{i + 1}Lorem ipsum dolor set amet."
        click_button 'Submit'
      end
      visit root_path
      click_link 'caleb'
    end
    it 'I can see the user\'s profile picture.' do
      expect(page).to have_css('img.user-img')
    end
    it 'I can see the user\'s username.' do
      expect(page).to have_content('caleb')
    end
    it 'I can see the number of posts the user has written.' do
      expect(page).to have_content('Number of posts: 8')
    end
    it 'I can see the user\'s bio' do
      expect(page).to have_content('me')
    end
    it 'I can see the user\'s first 3 posts.' do
      expect(page).to have_content('2Lorem ipsum dolor set amet.')
      expect(page).to have_content('3Lorem ipsum dolor set amet.')
    end
    it 'I can see a button that lets me view all of a user\'s posts.' do
      expect(page).to have_link('See all posts')
    end
    it 'When I click to see all posts, it redirects me to the user\'s post\'s index page' do
      click_link 'See all post'
      expect(page).to have_current_path(user_posts_path(User.first.id))
    end
  end
end
