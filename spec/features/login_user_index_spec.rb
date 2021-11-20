require 'rails_helper'

RSpec.describe 'Users', type: :system do
  describe 'the signin process' do
    before :each do
      visit new_user_session_path
      User.create(name: 'john doe', email: 'johndoe@mail.com', bio: 'hello world', password: '111111',
                  password_confirmation: '111111', confirmed_at: Date.today)
    end

    it 'try to signs me in with false data' do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password')
    end

    it 'shows the username and password inputs' do
      expect(page).to have_css('input[type="email"]')
      expect(page).to have_css('input[type="password"]')
    end

    it 'click the submit button without filling in the required informations throw error message' do
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password')
    end

    it 'filling email and password fields with correct data redirects to the root page' do
      fill_in 'Email', with: 'caleb@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
      expect(page).to have_current_path(root_path)
    end
  end
end

RSpec.describe 'list of users in', type: :feature do
  describe 'user index page:' do
    before do
      visit new_user_session_path
      @caleb = User.create(name: 'caleb', email: 'caleb@gmail.com', password: '111111', password_confirmation: '111111',
                           confirmed_at: Date.today)
      fill_in 'Email', with: 'caleb@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
    end

    it 'I can see the username of all other users' do
      expect(page).to have_selector('h2.user_name')
      expect(page).to have_selector('h2.user_name', between: 1..10)
    end

    it 'I can see the profile picture for each user' do
      expect(page).to have_selector('img.user-img')
      expect(page).to have_selector('img.user-img', between: 1..10)
    end

    it 'I can see the number of posts each user has written' do
      expect(page).to have_selector('div.u_post_count')
      expect(page).to have_selector('div.u_post_count', between: 0..5)
    end

    it 'When I click on a user, I am redirected to that user\'s show page' do
      # visit "/users/#{@caleb.id}"
      click_link 'caleb'
      expect(page).to have_content('caleb') # have_current_path(page.find_link('/users/1')[:href])
      # expect(page.current_url).to eq("http://www.example.com/users/#{@caleb.id}")
      expect(page).to have_current_path(page.find_link('caleb')[:href])
    end
  end
end
