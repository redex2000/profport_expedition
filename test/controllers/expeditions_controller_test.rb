require 'test_helper'

class ExpeditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expeditions_index_url
    assert_response :success
  end

  test "should get show" do
    get expeditions_show_url
    assert_response :success
  end

  test "should get new" do
    get expeditions_new_url
    assert_response :success
  end

  test "should get create" do
    get expeditions_create_url
    assert_response :success
  end

  test "should get edit" do
    get expeditions_edit_url
    assert_response :success
  end

  test "should get update" do
    get expeditions_update_url
    assert_response :success
  end

end
