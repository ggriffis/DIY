require 'test_helper'

class HowToListsControllerTest < ActionController::TestCase
  setup do
    @how_to_list = how_to_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how_to_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how_to_list" do
    assert_difference('HowToList.count') do
      post :create, how_to_list: { description: @how_to_list.description, name: @how_to_list.name }
    end

    assert_redirected_to how_to_list_path(assigns(:how_to_list))
  end

  test "should show how_to_list" do
    get :show, id: @how_to_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how_to_list
    assert_response :success
  end

  test "should update how_to_list" do
    put :update, id: @how_to_list, how_to_list: { description: @how_to_list.description, name: @how_to_list.name }
    assert_redirected_to how_to_list_path(assigns(:how_to_list))
  end

  test "should destroy how_to_list" do
    assert_difference('HowToList.count', -1) do
      delete :destroy, id: @how_to_list
    end

    assert_redirected_to how_to_lists_path
  end
end
