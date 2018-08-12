require 'test_helper'

class MultiMediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multi_medium = multi_media(:one)
  end

  test "should get index" do
    get multi_media_url, as: :json
    assert_response :success
  end

  test "should create multi_medium" do
    assert_difference('MultiMedium.count') do
      post multi_media_url, params: { multi_medium: { desc_multi-media: @multi_medium.desc_multi-media, nam_multi-media: @multi_medium.nam_multi-media } }, as: :json
    end

    assert_response 201
  end

  test "should show multi_medium" do
    get multi_medium_url(@multi_medium), as: :json
    assert_response :success
  end

  test "should update multi_medium" do
    patch multi_medium_url(@multi_medium), params: { multi_medium: { desc_multi-media: @multi_medium.desc_multi-media, nam_multi-media: @multi_medium.nam_multi-media } }, as: :json
    assert_response 200
  end

  test "should destroy multi_medium" do
    assert_difference('MultiMedium.count', -1) do
      delete multi_medium_url(@multi_medium), as: :json
    end

    assert_response 204
  end
end
