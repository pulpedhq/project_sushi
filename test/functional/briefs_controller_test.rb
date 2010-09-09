require 'test_helper'

class BriefsControllerTest < ActionController::TestCase
  setup do
    @brief = briefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:briefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brief" do
    assert_difference('Brief.count') do
      post :create, :brief => @brief.attributes
    end

    assert_redirected_to brief_path(assigns(:brief))
  end

  test "should show brief" do
    get :show, :id => @brief.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @brief.to_param
    assert_response :success
  end

  test "should update brief" do
    put :update, :id => @brief.to_param, :brief => @brief.attributes
    assert_redirected_to brief_path(assigns(:brief))
  end

  test "should destroy brief" do
    assert_difference('Brief.count', -1) do
      delete :destroy, :id => @brief.to_param
    end

    assert_redirected_to briefs_path
  end
end
