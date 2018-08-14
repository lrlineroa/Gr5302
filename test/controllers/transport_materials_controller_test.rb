require 'test_helper'

class TransportMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport_material = transport_materials(:one)
  end

  test "should get index" do
    get transport_materials_url, as: :json
    assert_response :success
  end

  test "should create transport_material" do
    assert_difference('TransportMaterial.count') do
      post transport_materials_url, params: { transport_material: { date_transport_material: @transport_material.date_transport_material, desc_transport_material: @transport_material.desc_transport_material, material_id: @transport_material.material_id, nam_transport_material: @transport_material.nam_transport_material, recycling_center_id: @transport_material.recycling_center_id } }, as: :json
    end

    assert_response 201
  end

  test "should show transport_material" do
    get transport_material_url(@transport_material), as: :json
    assert_response :success
  end

  test "should update transport_material" do
    patch transport_material_url(@transport_material), params: { transport_material: { date_transport_material: @transport_material.date_transport_material, desc_transport_material: @transport_material.desc_transport_material, material_id: @transport_material.material_id, nam_transport_material: @transport_material.nam_transport_material, recycling_center_id: @transport_material.recycling_center_id } }, as: :json
    assert_response 200
  end

  test "should destroy transport_material" do
    assert_difference('TransportMaterial.count', -1) do
      delete transport_material_url(@transport_material), as: :json
    end

    assert_response 204
  end
end
