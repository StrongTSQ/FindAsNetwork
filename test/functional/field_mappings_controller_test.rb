require 'test_helper'

class FieldMappingsControllerTest < ActionController::TestCase
  setup do
    @field_mapping = field_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_mapping" do
    assert_difference('FieldMapping.count') do
      post :create, :field_mapping => @field_mapping.attributes
    end

    assert_redirected_to field_mapping_path(assigns(:field_mapping))
  end

  test "should show field_mapping" do
    get :show, :id => @field_mapping.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @field_mapping.to_param
    assert_response :success
  end

  test "should update field_mapping" do
    put :update, :id => @field_mapping.to_param, :field_mapping => @field_mapping.attributes
    assert_redirected_to field_mapping_path(assigns(:field_mapping))
  end

  test "should destroy field_mapping" do
    assert_difference('FieldMapping.count', -1) do
      delete :destroy, :id => @field_mapping.to_param
    end

    assert_redirected_to field_mappings_path
  end
end
