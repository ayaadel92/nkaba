require 'test_helper'

class EvaluateHosptialsControllerTest < ActionController::TestCase
  setup do
    @evaluate_hosptial = evaluate_hosptials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluate_hosptials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluate_hosptial" do
    assert_difference('EvaluateHosptial.count') do
      post :create, evaluate_hosptial: { hospital_id: @evaluate_hosptial.hospital_id, membersh_number: @evaluate_hosptial.membersh_number, rate: @evaluate_hosptial.rate }
    end

    assert_redirected_to evaluate_hosptial_path(assigns(:evaluate_hosptial))
  end

  test "should show evaluate_hosptial" do
    get :show, id: @evaluate_hosptial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluate_hosptial
    assert_response :success
  end

  test "should update evaluate_hosptial" do
    patch :update, id: @evaluate_hosptial, evaluate_hosptial: { hospital_id: @evaluate_hosptial.hospital_id, membersh_number: @evaluate_hosptial.membersh_number, rate: @evaluate_hosptial.rate }
    assert_redirected_to evaluate_hosptial_path(assigns(:evaluate_hosptial))
  end

  test "should destroy evaluate_hosptial" do
    assert_difference('EvaluateHosptial.count', -1) do
      delete :destroy, id: @evaluate_hosptial
    end

    assert_redirected_to evaluate_hosptials_path
  end
end
