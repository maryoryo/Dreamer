require 'test_helper'

class Public::LookBacksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_look_backs_show_url
    assert_response :success
  end

  test "should get new" do
    get public_look_backs_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_look_backs_edit_url
    assert_response :success
  end

end
