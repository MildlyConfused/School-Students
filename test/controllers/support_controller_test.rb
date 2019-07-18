require 'test_helper'

class SupportControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get support_contact_url
    assert_response :success
  end

end
