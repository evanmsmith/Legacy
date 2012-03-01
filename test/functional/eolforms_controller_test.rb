require 'test_helper'

class EolformsControllerTest < ActionController::TestCase
  setup do
    @eolform = eolforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eolforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eolform" do
    assert_difference('Eolform.count') do
      post :create, eolform: @eolform.attributes
    end

    assert_redirected_to eolform_path(assigns(:eolform))
  end

  test "should show eolform" do
    get :show, id: @eolform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eolform
    assert_response :success
  end

  test "should update eolform" do
    put :update, id: @eolform, eolform: @eolform.attributes
    assert_redirected_to eolform_path(assigns(:eolform))
  end

  test "should destroy eolform" do
    assert_difference('Eolform.count', -1) do
      delete :destroy, id: @eolform
    end

    assert_redirected_to eolforms_path
  end
end
