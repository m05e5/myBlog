require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get post' do
    get pages_post_url
    assert_response :success
  end
end
