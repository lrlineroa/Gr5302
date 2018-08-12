require 'test_helper'

class RecyclingCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recycling_center = recycling_centers(:one)
  end

  test "should get index" do
    get recycling_centers_url, as: :json
    assert_response :success
  end

  test "should create recycling_center" do
    assert_difference('RecyclingCenter.count') do
      post recycling_centers_url, params: { recycling_center: { address_recycling_center: @recycling_center.address_recycling_center, desc_recycling_center: @recycling_center.desc_recycling_center, nam_recycling_center: @recycling_center.nam_recycling_center, tel_recycling_center: @recycling_center.tel_recycling_center, web_recycling_center: @recycling_center.web_recycling_center } }, as: :json
    end

    assert_response 201
  end

  test "should show recycling_center" do
    get recycling_center_url(@recycling_center), as: :json
    assert_response :success
  end

  test "should update recycling_center" do
    patch recycling_center_url(@recycling_center), params: { recycling_center: { address_recycling_center: @recycling_center.address_recycling_center, desc_recycling_center: @recycling_center.desc_recycling_center, nam_recycling_center: @recycling_center.nam_recycling_center, tel_recycling_center: @recycling_center.tel_recycling_center, web_recycling_center: @recycling_center.web_recycling_center } }, as: :json
    assert_response 200
  end

  test "should destroy recycling_center" do
    assert_difference('RecyclingCenter.count', -1) do
      delete recycling_center_url(@recycling_center), as: :json
    end

    assert_response 204
  end
end
