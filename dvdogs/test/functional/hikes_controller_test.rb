require 'test_helper'

class HikesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hikes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hike" do
    assert_difference('Hike.count') do
      post :create, :hike => { }
    end

    assert_redirected_to hike_path(assigns(:hike))
  end

  test "should show hike" do
    get :show, :id => hikes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hikes(:one).to_param
    assert_response :success
  end

  test "should update hike" do
    put :update, :id => hikes(:one).to_param, :hike => { }
    assert_redirected_to hike_path(assigns(:hike))
  end

  test "should destroy hike" do
    assert_difference('Hike.count', -1) do
      delete :destroy, :id => hikes(:one).to_param
    end

    assert_redirected_to hikes_path
  end
end
