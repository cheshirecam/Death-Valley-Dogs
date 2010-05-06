require 'test_helper'

class GpsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gp" do
    assert_difference('Gp.count') do
      post :create, :gp => { }
    end

    assert_redirected_to gp_path(assigns(:gp))
  end

  test "should show gp" do
    get :show, :id => gps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gps(:one).to_param
    assert_response :success
  end

  test "should update gp" do
    put :update, :id => gps(:one).to_param, :gp => { }
    assert_redirected_to gp_path(assigns(:gp))
  end

  test "should destroy gp" do
    assert_difference('Gp.count', -1) do
      delete :destroy, :id => gps(:one).to_param
    end

    assert_redirected_to gps_path
  end
end
