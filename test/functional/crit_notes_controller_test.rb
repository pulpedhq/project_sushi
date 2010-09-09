require 'test_helper'

class CritNotesControllerTest < ActionController::TestCase
  setup do
    @crit_note = crit_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crit_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crit_note" do
    assert_difference('CritNote.count') do
      post :create, :crit_note => @crit_note.attributes
    end

    assert_redirected_to crit_note_path(assigns(:crit_note))
  end

  test "should show crit_note" do
    get :show, :id => @crit_note.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @crit_note.to_param
    assert_response :success
  end

  test "should update crit_note" do
    put :update, :id => @crit_note.to_param, :crit_note => @crit_note.attributes
    assert_redirected_to crit_note_path(assigns(:crit_note))
  end

  test "should destroy crit_note" do
    assert_difference('CritNote.count', -1) do
      delete :destroy, :id => @crit_note.to_param
    end

    assert_redirected_to crit_notes_path
  end
end
