require 'test_helper'

class UsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @use = uses(:one)
  end

  test "should get index" do
    get uses_url, as: :json
    assert_response :success
  end

  test "should create use" do
    assert_difference('Use.count') do
      post uses_url, params: { use: { desc_: @use.desc_, material_id: @use.material_id, nam_use: @use.nam_use, use: @use.use, user_id: @use.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show use" do
    get use_url(@use), as: :json
    assert_response :success
  end

  test "should update use" do
    patch use_url(@use), params: { use: { desc_: @use.desc_, material_id: @use.material_id, nam_use: @use.nam_use, use: @use.use, user_id: @use.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy use" do
    assert_difference('Use.count', -1) do
      delete use_url(@use), as: :json
    end

    assert_response 204
  end
end
