require 'test_helper'

class OffersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get offers_new_url
    assert_response :success
  end

end
