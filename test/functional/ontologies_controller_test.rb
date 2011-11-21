require 'test_helper'

class OntologiesControllerTest < ActionController::TestCase
  setup do
    @ontology = ontologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ontologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ontology" do
    assert_difference('Ontology.count') do
      post :create, :ontology => @ontology.attributes
    end

    assert_redirected_to ontology_path(assigns(:ontology))
  end

  test "should show ontology" do
    get :show, :id => @ontology.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ontology.to_param
    assert_response :success
  end

  test "should update ontology" do
    put :update, :id => @ontology.to_param, :ontology => @ontology.attributes
    assert_redirected_to ontology_path(assigns(:ontology))
  end

  test "should destroy ontology" do
    assert_difference('Ontology.count', -1) do
      delete :destroy, :id => @ontology.to_param
    end

    assert_redirected_to ontologies_path
  end
end
