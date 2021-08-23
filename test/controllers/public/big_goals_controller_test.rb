require 'test_helper'

class Public::BigGoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_big_goals_show_url
    assert_response :success
  end

  test "should get new" do
    get public_big_goals_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_big_goals_edit_url
    assert_response :success
  end

end
