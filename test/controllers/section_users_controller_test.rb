require 'test_helper'

class SectionUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get section_users_new_url
    assert_response :success
  end

  test "should get update" do
    get section_users_update_url
    assert_response :success
  end

  test "should get show" do
    get section_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get section_users_edit_url
    assert_response :success
  end

end
