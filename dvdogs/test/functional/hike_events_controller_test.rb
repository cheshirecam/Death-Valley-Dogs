require 'test_helper'

class HikeEventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hike_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hike_event" do
    assert_difference('HikeEvent.count') do
      post :create, :hike_event => { }
    end

    assert_redirected_to hike_event_path(assigns(:hike_event))
  end

  test "should show hike_event" do
    get :show, :id => hike_events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hike_events(:one).to_param
    assert_response :success
  end

  test "should update hike_event" do
    put :update, :id => hike_events(:one).to_param, :hike_event => { }
    assert_redirected_to hike_event_path(assigns(:hike_event))
  end

  test "should destroy hike_event" do
    assert_difference('HikeEvent.count', -1) do
      delete :destroy, :id => hike_events(:one).to_param
    end

    assert_redirected_to hike_events_path
  end
end
