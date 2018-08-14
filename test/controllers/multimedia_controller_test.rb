require 'test_helper'

class MultimediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multimedium = multimedia(:one)
  end

  test "should get index" do
    get multimedia_url, as: :json
    assert_response :success
  end

  test "should create multimedium" do
    assert_difference('Multimedium.count') do
      post multimedia_url, params: { multimedium: { desc_multimedia: @multimedium.desc_multimedia, id_multimedia_type: @multimedium.id_multimedia_type, multimedia_type_id: @multimedium.multimedia_type_id, nam_multimedia: @multimedium.nam_multimedia } }, as: :json
    end

    assert_response 201
  end

  test "should show multimedium" do
    get multimedium_url(@multimedium), as: :json
    assert_response :success
  end

  test "should update multimedium" do
    patch multimedium_url(@multimedium), params: { multimedium: { desc_multimedia: @multimedium.desc_multimedia, id_multimedia_type: @multimedium.id_multimedia_type, multimedia_type_id: @multimedium.multimedia_type_id, nam_multimedia: @multimedium.nam_multimedia } }, as: :json
    assert_response 200
  end

  test "should destroy multimedium" do
    assert_difference('Multimedium.count', -1) do
      delete multimedium_url(@multimedium), as: :json
    end

    assert_response 204
  end
end
