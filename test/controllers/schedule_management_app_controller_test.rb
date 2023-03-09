require "test_helper"

class ScheduleManagementAppControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get schedule_management_app_home_url
    assert_response :success
  end

  test "should get create" do
    get schedule_management_app_create_url
    assert_response :success
  end
end
