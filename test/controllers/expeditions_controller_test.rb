require 'test_helper'

class ExpeditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expeditions_url
    assert_response :success
  end

  test 'should post create' do
    post expeditions_path, params: { expedition: attributes_for(:expedition) }
    assert_redirected_to expedition_path(Expedition.last)
  end

  test 'should post create new expedition' do
    assert_difference "Expedition.count", 1 do
      post expeditions_path, params: { expedition: attributes_for(:expedition) }
    end

  end

end
