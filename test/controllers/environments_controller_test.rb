require 'test_helper'

class EnvironmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @environment = environments(:one)
  end

  test "should get index" do
    get environments_url, as: :json
    assert_response :success
  end

  test "should create environment" do
    assert_difference('Environment.count') do
      post environments_url, params: { environment: { desc_: @environment.desc_, environment: @environment.environment, multimedia_id: @environment.multimedia_id, nam_: @environment.nam_, user_id: @environment.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show environment" do
    get environment_url(@environment), as: :json
    assert_response :success
  end

  test "should update environment" do
    patch environment_url(@environment), params: { environment: { desc_: @environment.desc_, environment: @environment.environment, multimedia_id: @environment.multimedia_id, nam_: @environment.nam_, user_id: @environment.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy environment" do
    assert_difference('Environment.count', -1) do
      delete environment_url(@environment), as: :json
    end

    assert_response 204
  end
end
