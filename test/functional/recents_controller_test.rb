require 'test_helper'

class RecentsControllerTest < ActionController::TestCase
  setup do
    @recent = recents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recent" do
    assert_difference('Recent.count') do
      post :create, :recent => @recent.attributes
    end

    assert_redirected_to recent_path(assigns(:recent))
  end

  test "should show recent" do
    get :show, :id => @recent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @recent.to_param
    assert_response :success
  end

  test "should update recent" do
    put :update, :id => @recent.to_param, :recent => @recent.attributes
    assert_redirected_to recent_path(assigns(:recent))
  end

  test "should destroy recent" do
    assert_difference('Recent.count', -1) do
      delete :destroy, :id => @recent.to_param
    end

    assert_redirected_to recents_path
  end
end
