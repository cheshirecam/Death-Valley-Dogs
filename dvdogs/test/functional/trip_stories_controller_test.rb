require 'test_helper'

class TripStoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_story" do
    assert_difference('TripStory.count') do
      post :create, :trip_story => { }
    end

    assert_redirected_to trip_story_path(assigns(:trip_story))
  end

  test "should show trip_story" do
    get :show, :id => trip_stories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => trip_stories(:one).to_param
    assert_response :success
  end

  test "should update trip_story" do
    put :update, :id => trip_stories(:one).to_param, :trip_story => { }
    assert_redirected_to trip_story_path(assigns(:trip_story))
  end

  test "should destroy trip_story" do
    assert_difference('TripStory.count', -1) do
      delete :destroy, :id => trip_stories(:one).to_param
    end

    assert_redirected_to trip_stories_path
  end
end
