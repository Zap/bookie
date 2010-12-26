require 'test_helper'

class WagersControllerTest < ActionController::TestCase
  setup do
    @wager = wagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wager" do
    assert_difference('Wager.count') do
      post :create, :wager => @wager.attributes
    end

    assert_redirected_to wager_path(assigns(:wager))
  end

  test "should show wager" do
    get :show, :id => @wager.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @wager.to_param
    assert_response :success
  end

  test "should update wager" do
    put :update, :id => @wager.to_param, :wager => @wager.attributes
    assert_redirected_to wager_path(assigns(:wager))
  end

  test "should destroy wager" do
    assert_difference('Wager.count', -1) do
      delete :destroy, :id => @wager.to_param
    end

    assert_redirected_to wagers_path
  end
end
