require 'test_helper'

class RelativesControllerTest < ActionController::TestCase
  setup do
    @relative = relatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relative" do
    assert_difference('Relative.count') do
      post :create, relative: { date_of_birth: @relative.date_of_birth, gender: @relative.gender, limit_id: @relative.limit_id, membersh_number: @relative.membersh_number, name: @relative.name, national_id: @relative.national_id, number_health_care: @relative.number_health_care, relation_type: @relative.relation_type }
    end

    assert_redirected_to relative_path(assigns(:relative))
  end

  test "should show relative" do
    get :show, id: @relative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relative
    assert_response :success
  end

  test "should update relative" do
    patch :update, id: @relative, relative: { date_of_birth: @relative.date_of_birth, gender: @relative.gender, limit_id: @relative.limit_id, membersh_number: @relative.membersh_number, name: @relative.name, national_id: @relative.national_id, number_health_care: @relative.number_health_care, relation_type: @relative.relation_type }
    assert_redirected_to relative_path(assigns(:relative))
  end

  test "should destroy relative" do
    assert_difference('Relative.count', -1) do
      delete :destroy, id: @relative
    end

    assert_redirected_to relatives_path
  end
end
