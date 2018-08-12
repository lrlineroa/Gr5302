require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address_user: @user.address_user, date_user: @user.date_user, email_user: @user.email_user, identification_user: @user.identification_user, lastnam1_user: @user.lastnam1_user, lastnam2_user: @user.lastnam2_user, nam1_user: @user.nam1_user, nam2_user: @user.nam2_user, password: @user.password, role_id: @user.role_id, tel_user: @user.tel_user } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address_user: @user.address_user, date_user: @user.date_user, email_user: @user.email_user, identification_user: @user.identification_user, lastnam1_user: @user.lastnam1_user, lastnam2_user: @user.lastnam2_user, nam1_user: @user.nam1_user, nam2_user: @user.nam2_user, password: @user.password, role_id: @user.role_id, tel_user: @user.tel_user } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
