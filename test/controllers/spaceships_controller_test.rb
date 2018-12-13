require 'test_helper'

class SpaceshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spaceships_index_url
    assert_response :success
  end

  test "should get show" do
    get spaceships_show_url
    assert_response :success
  end

  test "should get new" do
    get spaceships_new_url
    assert_response :success
  end

  test "should get create" do
    get spaceships_create_url
    assert_response :success
  end

  test "should get update" do
    get spaceships_update_url
    assert_response :success
  end

  test "should get destroy" do
    get spaceships_destroy_url
    assert_response :success
  end

end
