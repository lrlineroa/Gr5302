require 'test_helper'

class MultimediaTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multimedia_type = multimedia_types(:one)
  end

  test "should get index" do
    get multimedia_types_url, as: :json
    assert_response :success
  end

  test "should create multimedia_type" do
    assert_difference('MultimediaType.count') do
      post multimedia_types_url, params: { multimedia_type: { desc_multimedia_type: @multimedia_type.desc_multimedia_type, nam_multimedia_type: @multimedia_type.nam_multimedia_type } }, as: :json
    end

    assert_response 201
  end

  test "should show multimedia_type" do
    get multimedia_type_url(@multimedia_type), as: :json
    assert_response :success
  end

  test "should update multimedia_type" do
    patch multimedia_type_url(@multimedia_type), params: { multimedia_type: { desc_multimedia_type: @multimedia_type.desc_multimedia_type, nam_multimedia_type: @multimedia_type.nam_multimedia_type } }, as: :json
    assert_response 200
  end

  test "should destroy multimedia_type" do
    assert_difference('MultimediaType.count', -1) do
      delete multimedia_type_url(@multimedia_type), as: :json
    end

    assert_response 204
  end
end
