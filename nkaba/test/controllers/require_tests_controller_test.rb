require 'test_helper'

class RequireTestsControllerTest < ActionController::TestCase
  setup do
    @require_test = require_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:require_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create require_test" do
    assert_difference('RequireTest.count') do
      post :create, require_test: { test: @require_test.test, test_id: @require_test.test_id, transfer_id: @require_test.transfer_id }
    end

    assert_redirected_to require_test_path(assigns(:require_test))
  end

  test "should show require_test" do
    get :show, id: @require_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @require_test
    assert_response :success
  end

  test "should update require_test" do
    patch :update, id: @require_test, require_test: { test: @require_test.test, test_id: @require_test.test_id, transfer_id: @require_test.transfer_id }
    assert_redirected_to require_test_path(assigns(:require_test))
  end

  test "should destroy require_test" do
    assert_difference('RequireTest.count', -1) do
      delete :destroy, id: @require_test
    end

    assert_redirected_to require_tests_path
  end
end
