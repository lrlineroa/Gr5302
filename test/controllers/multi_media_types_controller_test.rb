require 'test_helper'

class MultiMediaTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multi_media_type = multi_media_types(:one)
  end

  test "should get index" do
    get multi_media_types_url, as: :json
    assert_response :success
  end

  test "should create multi_media_type" do
    assert_difference('MultiMediaType.count') do
      post multi_media_types_url, params: { multi_media_type: { desc_multimedia_type: @multi_media_type.desc_multimedia_type, nam_multimedia_type: @multi_media_type.nam_multimedia_type } }, as: :json
    end

    assert_response 201
  end

  test "should show multi_media_type" do
    get multi_media_type_url(@multi_media_type), as: :json
    assert_response :success
  end

  test "should update multi_media_type" do
    patch multi_media_type_url(@multi_media_type), params: { multi_media_type: { desc_multimedia_type: @multi_media_type.desc_multimedia_type, nam_multimedia_type: @multi_media_type.nam_multimedia_type } }, as: :json
    assert_response 200
  end

  test "should destroy multi_media_type" do
    assert_difference('MultiMediaType.count', -1) do
      delete multi_media_type_url(@multi_media_type), as: :json
    end

    assert_response 204
  end
end
