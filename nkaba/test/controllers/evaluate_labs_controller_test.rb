require 'test_helper'

class EvaluateLabsControllerTest < ActionController::TestCase
  setup do
    @evaluate_lab = evaluate_labs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluate_labs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluate_lab" do
    assert_difference('EvaluateLab.count') do
      post :create, evaluate_lab: { lab_id: @evaluate_lab.lab_id, membersh_number: @evaluate_lab.membersh_number, rate: @evaluate_lab.rate }
    end

    assert_redirected_to evaluate_lab_path(assigns(:evaluate_lab))
  end

  test "should show evaluate_lab" do
    get :show, id: @evaluate_lab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluate_lab
    assert_response :success
  end

  test "should update evaluate_lab" do
    patch :update, id: @evaluate_lab, evaluate_lab: { lab_id: @evaluate_lab.lab_id, membersh_number: @evaluate_lab.membersh_number, rate: @evaluate_lab.rate }
    assert_redirected_to evaluate_lab_path(assigns(:evaluate_lab))
  end

  test "should destroy evaluate_lab" do
    assert_difference('EvaluateLab.count', -1) do
      delete :destroy, id: @evaluate_lab
    end

    assert_redirected_to evaluate_labs_path
  end
end
