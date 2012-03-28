require 'test_helper'

class ItpsControllerTest < ActionController::TestCase
  setup do
    @itp = itps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itp" do
    assert_difference('Itp.count') do
      post :create, itp: @itp.attributes
    end

    assert_redirected_to itp_path(assigns(:itp))
  end

  test "should show itp" do
    get :show, id: @itp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itp
    assert_response :success
  end

  test "should update itp" do
    put :update, id: @itp, itp: @itp.attributes
    assert_redirected_to itp_path(assigns(:itp))
  end

  test "should destroy itp" do
    assert_difference('Itp.count', -1) do
      delete :destroy, id: @itp
    end

    assert_redirected_to itps_path
  end
end
