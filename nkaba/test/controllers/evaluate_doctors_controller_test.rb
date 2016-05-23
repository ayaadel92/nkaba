require 'test_helper'

class EvaluateDoctorsControllerTest < ActionController::TestCase
  setup do
    @evaluate_doctor = evaluate_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluate_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluate_doctor" do
    assert_difference('EvaluateDoctor.count') do
      post :create, evaluate_doctor: { doctor_id: @evaluate_doctor.doctor_id, membersh_number: @evaluate_doctor.membersh_number, rate: @evaluate_doctor.rate }
    end

    assert_redirected_to evaluate_doctor_path(assigns(:evaluate_doctor))
  end

  test "should show evaluate_doctor" do
    get :show, id: @evaluate_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluate_doctor
    assert_response :success
  end

  test "should update evaluate_doctor" do
    patch :update, id: @evaluate_doctor, evaluate_doctor: { doctor_id: @evaluate_doctor.doctor_id, membersh_number: @evaluate_doctor.membersh_number, rate: @evaluate_doctor.rate }
    assert_redirected_to evaluate_doctor_path(assigns(:evaluate_doctor))
  end

  test "should destroy evaluate_doctor" do
    assert_difference('EvaluateDoctor.count', -1) do
      delete :destroy, id: @evaluate_doctor
    end

    assert_redirected_to evaluate_doctors_path
  end
end
