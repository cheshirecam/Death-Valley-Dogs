require 'test_helper'

class RigBreakdownsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rig_breakdowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rig_breakdown" do
    assert_difference('RigBreakdown.count') do
      post :create, :rig_breakdown => { }
    end

    assert_redirected_to rig_breakdown_path(assigns(:rig_breakdown))
  end

  test "should show rig_breakdown" do
    get :show, :id => rig_breakdowns(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => rig_breakdowns(:one).to_param
    assert_response :success
  end

  test "should update rig_breakdown" do
    put :update, :id => rig_breakdowns(:one).to_param, :rig_breakdown => { }
    assert_redirected_to rig_breakdown_path(assigns(:rig_breakdown))
  end

  test "should destroy rig_breakdown" do
    assert_difference('RigBreakdown.count', -1) do
      delete :destroy, :id => rig_breakdowns(:one).to_param
    end

    assert_redirected_to rig_breakdowns_path
  end
end
