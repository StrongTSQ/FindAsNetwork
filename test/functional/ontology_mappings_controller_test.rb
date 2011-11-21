require 'test_helper'

class OntologyMappingsControllerTest < ActionController::TestCase
  setup do
    @ontology_mapping = ontology_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ontology_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ontology_mapping" do
    assert_difference('OntologyMapping.count') do
      post :create, :ontology_mapping => @ontology_mapping.attributes
    end

    assert_redirected_to ontology_mapping_path(assigns(:ontology_mapping))
  end

  test "should show ontology_mapping" do
    get :show, :id => @ontology_mapping.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ontology_mapping.to_param
    assert_response :success
  end

  test "should update ontology_mapping" do
    put :update, :id => @ontology_mapping.to_param, :ontology_mapping => @ontology_mapping.attributes
    assert_redirected_to ontology_mapping_path(assigns(:ontology_mapping))
  end

  test "should destroy ontology_mapping" do
    assert_difference('OntologyMapping.count', -1) do
      delete :destroy, :id => @ontology_mapping.to_param
    end

    assert_redirected_to ontology_mappings_path
  end
end
