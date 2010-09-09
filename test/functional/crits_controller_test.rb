require 'test_helper'

class CritsControllerTest < ActionController::TestCase
  setup do
    @crit = crits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crit" do
    assert_difference('Crit.count') do
      post :create, :crit => @crit.attributes
    end

    assert_redirected_to crit_path(assigns(:crit))
  end

  test "should show crit" do
    get :show, :id => @crit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @crit.to_param
    assert_response :success
  end

  test "should update crit" do
    put :update, :id => @crit.to_param, :crit => @crit.attributes
    assert_redirected_to crit_path(assigns(:crit))
  end

  test "should destroy crit" do
    assert_difference('Crit.count', -1) do
      delete :destroy, :id => @crit.to_param
    end

    assert_redirected_to crits_path
  end
end
