require 'test_helper'

class RigUpgradesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rig_upgrades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rig_upgrade" do
    assert_difference('RigUpgrade.count') do
      post :create, :rig_upgrade => { }
    end

    assert_redirected_to rig_upgrade_path(assigns(:rig_upgrade))
  end

  test "should show rig_upgrade" do
    get :show, :id => rig_upgrades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => rig_upgrades(:one).to_param
    assert_response :success
  end

  test "should update rig_upgrade" do
    put :update, :id => rig_upgrades(:one).to_param, :rig_upgrade => { }
    assert_redirected_to rig_upgrade_path(assigns(:rig_upgrade))
  end

  test "should destroy rig_upgrade" do
    assert_difference('RigUpgrade.count', -1) do
      delete :destroy, :id => rig_upgrades(:one).to_param
    end

    assert_redirected_to rig_upgrades_path
  end
end
