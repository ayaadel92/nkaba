require 'test_helper'

class TransfersControllerTest < ActionController::TestCase
  setup do
    @transfer = transfers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transfers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transfer" do
    assert_difference('Transfer.count') do
      post :create, transfer: { data_of_request: @transfer.data_of_request, doctor_id: @transfer.doctor_id, hospital_id: @transfer.hospital_id, lab_id: @transfer.lab_id, medicaldiagnosis: @transfer.medicaldiagnosis, membersh_number: @transfer.membersh_number, percentage_shareholding: @transfer.percentage_shareholding, status: @transfer.status, total_cost: @transfer.total_cost, type_id: @transfer.type_id }
    end

    assert_redirected_to transfer_path(assigns(:transfer))
  end

  test "should show transfer" do
    get :show, id: @transfer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transfer
    assert_response :success
  end

  test "should update transfer" do
    patch :update, id: @transfer, transfer: { data_of_request: @transfer.data_of_request, doctor_id: @transfer.doctor_id, hospital_id: @transfer.hospital_id, lab_id: @transfer.lab_id, medicaldiagnosis: @transfer.medicaldiagnosis, membersh_number: @transfer.membersh_number, percentage_shareholding: @transfer.percentage_shareholding, status: @transfer.status, total_cost: @transfer.total_cost, type_id: @transfer.type_id }
    assert_redirected_to transfer_path(assigns(:transfer))
  end

  test "should destroy transfer" do
    assert_difference('Transfer.count', -1) do
      delete :destroy, id: @transfer
    end

    assert_redirected_to transfers_path
  end
end
