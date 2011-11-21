require 'test_helper'

class DomainNetworksControllerTest < ActionController::TestCase
  setup do
    @domain_network = domain_networks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:domain_networks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create domain_network" do
    assert_difference('DomainNetwork.count') do
      post :create, :domain_network => @domain_network.attributes
    end

    assert_redirected_to domain_network_path(assigns(:domain_network))
  end

  test "should show domain_network" do
    get :show, :id => @domain_network.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @domain_network.to_param
    assert_response :success
  end

  test "should update domain_network" do
    put :update, :id => @domain_network.to_param, :domain_network => @domain_network.attributes
    assert_redirected_to domain_network_path(assigns(:domain_network))
  end

  test "should destroy domain_network" do
    assert_difference('DomainNetwork.count', -1) do
      delete :destroy, :id => @domain_network.to_param
    end

    assert_redirected_to domain_networks_path
  end
end
