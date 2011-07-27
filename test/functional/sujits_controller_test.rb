require 'test_helper'

class SujitsControllerTest < ActionController::TestCase
  setup do
    @sujit = sujits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sujits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sujit" do
    assert_difference('Sujit.count') do
      post :create, :sujit => @sujit.attributes
    end

    assert_redirected_to sujit_path(assigns(:sujit))
  end

  test "should show sujit" do
    get :show, :id => @sujit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sujit.to_param
    assert_response :success
  end

  test "should update sujit" do
    put :update, :id => @sujit.to_param, :sujit => @sujit.attributes
    assert_redirected_to sujit_path(assigns(:sujit))
  end

  test "should destroy sujit" do
    assert_difference('Sujit.count', -1) do
      delete :destroy, :id => @sujit.to_param
    end

    assert_redirected_to sujits_path
  end
end
