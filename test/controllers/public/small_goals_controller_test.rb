require 'test_helper'

class Public::SmallGoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_small_goals_show_url
    assert_response :success
  end

  test "should get new" do
    get public_small_goals_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_small_goals_edit_url
    assert_response :success
  end

end
