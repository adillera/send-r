require 'test_helper'

class PreviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get previews_index_url
    assert_response :success
  end

end
