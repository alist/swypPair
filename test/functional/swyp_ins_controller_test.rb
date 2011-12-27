require 'test_helper'

class SwypInsControllerTest < ActionController::TestCase
  setup do
    @swyp_in = swyp_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swyp_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swyp_in" do
    assert_difference('SwypIn.count') do
      post :create, swyp_in: @swyp_in.attributes
    end

    assert_redirected_to swyp_in_path(assigns(:swyp_in))
  end

  test "should show swyp_in" do
    get :show, id: @swyp_in.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swyp_in.to_param
    assert_response :success
  end

  test "should update swyp_in" do
    put :update, id: @swyp_in.to_param, swyp_in: @swyp_in.attributes
    assert_redirected_to swyp_in_path(assigns(:swyp_in))
  end

  test "should destroy swyp_in" do
    assert_difference('SwypIn.count', -1) do
      delete :destroy, id: @swyp_in.to_param
    end

    assert_redirected_to swyp_ins_path
  end
end
