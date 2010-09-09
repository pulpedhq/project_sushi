require 'test_helper'

class CritRequirementsControllerTest < ActionController::TestCase
  setup do
    @crit_requirement = crit_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crit_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crit_requirement" do
    assert_difference('CritRequirement.count') do
      post :create, :crit_requirement => @crit_requirement.attributes
    end

    assert_redirected_to crit_requirement_path(assigns(:crit_requirement))
  end

  test "should show crit_requirement" do
    get :show, :id => @crit_requirement.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @crit_requirement.to_param
    assert_response :success
  end

  test "should update crit_requirement" do
    put :update, :id => @crit_requirement.to_param, :crit_requirement => @crit_requirement.attributes
    assert_redirected_to crit_requirement_path(assigns(:crit_requirement))
  end

  test "should destroy crit_requirement" do
    assert_difference('CritRequirement.count', -1) do
      delete :destroy, :id => @crit_requirement.to_param
    end

    assert_redirected_to crit_requirements_path
  end
end
