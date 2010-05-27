require 'test_helper'

class LatestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:latests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create latest" do
    assert_difference('Latest.count') do
      post :create, :latest => { }
    end

    assert_redirected_to latest_path(assigns(:latest))
  end

  test "should show latest" do
    get :show, :id => latests(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => latests(:one).to_param
    assert_response :success
  end

  test "should update latest" do
    put :update, :id => latests(:one).to_param, :latest => { }
    assert_redirected_to latest_path(assigns(:latest))
  end

  test "should destroy latest" do
    assert_difference('Latest.count', -1) do
      delete :destroy, :id => latests(:one).to_param
    end

    assert_redirected_to latests_path
  end
end
