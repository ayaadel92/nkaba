require 'test_helper'

class ComplaintsControllerTest < ActionController::TestCase
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post :create, complaint: { descriptions: @complaint.descriptions, doctor_id: @complaint.doctor_id, hospital_id: @complaint.hospital_id, lab_id: @complaint.lab_id, membersh_number: @complaint.membersh_number, path_of_image: @complaint.path_of_image, path_of_video: @complaint.path_of_video }
    end

    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should show complaint" do
    get :show, id: @complaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complaint
    assert_response :success
  end

  test "should update complaint" do
    patch :update, id: @complaint, complaint: { descriptions: @complaint.descriptions, doctor_id: @complaint.doctor_id, hospital_id: @complaint.hospital_id, lab_id: @complaint.lab_id, membersh_number: @complaint.membersh_number, path_of_image: @complaint.path_of_image, path_of_video: @complaint.path_of_video }
    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete :destroy, id: @complaint
    end

    assert_redirected_to complaints_path
  end
end
