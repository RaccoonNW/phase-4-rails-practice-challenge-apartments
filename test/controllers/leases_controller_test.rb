require "test_helper"

class LeasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leases_index_url
    assert_response :success
  end

  test "should get create" do
    get leases_create_url
    assert_response :success
  end

  test "should get delete" do
    get leases_delete_url
    assert_response :success
  end
end
