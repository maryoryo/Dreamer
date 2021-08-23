require 'test_helper'

class Public::MediumGoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_medium_goals_show_url
    assert_response :success
  end

  test "should get new" do
    get public_medium_goals_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_medium_goals_edit_url
    assert_response :success
  end

end
