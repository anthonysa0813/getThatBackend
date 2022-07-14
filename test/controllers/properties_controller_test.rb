require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get properties_create_url
    assert_response :success
  end
end
