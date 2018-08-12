require 'test_helper'

class MaterialTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_type = material_types(:one)
  end

  test "should get index" do
    get material_types_url, as: :json
    assert_response :success
  end

  test "should create material_type" do
    assert_difference('MaterialType.count') do
      post material_types_url, params: { material_type: { desc_material_type: @material_type.desc_material_type, nam_material_type: @material_type.nam_material_type } }, as: :json
    end

    assert_response 201
  end

  test "should show material_type" do
    get material_type_url(@material_type), as: :json
    assert_response :success
  end

  test "should update material_type" do
    patch material_type_url(@material_type), params: { material_type: { desc_material_type: @material_type.desc_material_type, nam_material_type: @material_type.nam_material_type } }, as: :json
    assert_response 200
  end

  test "should destroy material_type" do
    assert_difference('MaterialType.count', -1) do
      delete material_type_url(@material_type), as: :json
    end

    assert_response 204
  end
end
