require 'test_helper'

class HikeStoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hike_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hike_story" do
    assert_difference('HikeStory.count') do
      post :create, :hike_story => { }
    end

    assert_redirected_to hike_story_path(assigns(:hike_story))
  end

  test "should show hike_story" do
    get :show, :id => hike_stories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hike_stories(:one).to_param
    assert_response :success
  end

  test "should update hike_story" do
    put :update, :id => hike_stories(:one).to_param, :hike_story => { }
    assert_redirected_to hike_story_path(assigns(:hike_story))
  end

  test "should destroy hike_story" do
    assert_difference('HikeStory.count', -1) do
      delete :destroy, :id => hike_stories(:one).to_param
    end

    assert_redirected_to hike_stories_path
  end
end
