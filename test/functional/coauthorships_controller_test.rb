require 'test_helper'

class CoauthorshipsControllerTest < ActionController::TestCase
  setup do
    @coauthorship = coauthorships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coauthorships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coauthorship" do
    assert_difference('Coauthorship.count') do
      post :create, :coauthorship => @coauthorship.attributes
    end

    assert_redirected_to coauthorship_path(assigns(:coauthorship))
  end

  test "should show coauthorship" do
    get :show, :id => @coauthorship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @coauthorship.to_param
    assert_response :success
  end

  test "should update coauthorship" do
    put :update, :id => @coauthorship.to_param, :coauthorship => @coauthorship.attributes
    assert_redirected_to coauthorship_path(assigns(:coauthorship))
  end

  test "should destroy coauthorship" do
    assert_difference('Coauthorship.count', -1) do
      delete :destroy, :id => @coauthorship.to_param
    end

    assert_redirected_to coauthorships_path
  end
end
