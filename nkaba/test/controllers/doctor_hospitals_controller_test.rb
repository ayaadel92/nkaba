require 'test_helper'

class DoctorHospitalsControllerTest < ActionController::TestCase
  setup do
    @doctor_hospital = doctor_hospitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_hospitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_hospital" do
    assert_difference('DoctorHospital.count') do
      post :create, doctor_hospital: { doctor_id: @doctor_hospital.doctor_id, hospital_id: @doctor_hospital.hospital_id }
    end

    assert_redirected_to doctor_hospital_path(assigns(:doctor_hospital))
  end

  test "should show doctor_hospital" do
    get :show, id: @doctor_hospital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_hospital
    assert_response :success
  end

  test "should update doctor_hospital" do
    patch :update, id: @doctor_hospital, doctor_hospital: { doctor_id: @doctor_hospital.doctor_id, hospital_id: @doctor_hospital.hospital_id }
    assert_redirected_to doctor_hospital_path(assigns(:doctor_hospital))
  end

  test "should destroy doctor_hospital" do
    assert_difference('DoctorHospital.count', -1) do
      delete :destroy, id: @doctor_hospital
    end

    assert_redirected_to doctor_hospitals_path
  end
end
