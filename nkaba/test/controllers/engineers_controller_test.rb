require 'test_helper'

class EngineersControllerTest < ActionController::TestCase
  setup do
    @engineer = engineers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engineers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engineer" do
    assert_difference('Engineer.count') do
      post :create, engineer: { address: @engineer.address, credit_card: @engineer.credit_card, data_of_birth: @engineer.data_of_birth, email: @engineer.email, gender: @engineer.gender, graduation_year: @engineer.graduation_year, join_data: @engineer.join_data, limit_id: @engineer.limit_id, membersh_number: @engineer.membersh_number, name: @engineer.name, national_id: @engineer.national_id, number_health_care: @engineer.number_health_care, number_of_participants: @engineer.number_of_participants, path: @engineer.path, phone_number: @engineer.phone_number }
    end

    assert_redirected_to engineer_path(assigns(:engineer))
  end

  test "should show engineer" do
    get :show, id: @engineer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engineer
    assert_response :success
  end

  test "should update engineer" do
    patch :update, id: @engineer, engineer: { address: @engineer.address, credit_card: @engineer.credit_card, data_of_birth: @engineer.data_of_birth, email: @engineer.email, gender: @engineer.gender, graduation_year: @engineer.graduation_year, join_data: @engineer.join_data, limit_id: @engineer.limit_id, membersh_number: @engineer.membersh_number, name: @engineer.name, national_id: @engineer.national_id, number_health_care: @engineer.number_health_care, number_of_participants: @engineer.number_of_participants, path: @engineer.path, phone_number: @engineer.phone_number }
    assert_redirected_to engineer_path(assigns(:engineer))
  end

  test "should destroy engineer" do
    assert_difference('Engineer.count', -1) do
      delete :destroy, id: @engineer
    end

    assert_redirected_to engineers_path
  end
end
