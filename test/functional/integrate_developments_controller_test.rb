require 'test_helper'

class IntegrateDevelopmentsControllerTest < ActionController::TestCase
  setup do
    @integrate_development = integrate_developments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:integrate_developments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create integrate_development" do
    assert_difference('IntegrateDevelopment.count') do
      post :create, integrate_development: { content: @integrate_development.content, name: @integrate_development.name, title: @integrate_development.title }
    end

    assert_redirected_to integrate_development_path(assigns(:integrate_development))
  end

  test "should show integrate_development" do
    get :show, id: @integrate_development
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @integrate_development
    assert_response :success
  end

  test "should update integrate_development" do
    put :update, id: @integrate_development, integrate_development: { content: @integrate_development.content, name: @integrate_development.name, title: @integrate_development.title }
    assert_redirected_to integrate_development_path(assigns(:integrate_development))
  end

  test "should destroy integrate_development" do
    assert_difference('IntegrateDevelopment.count', -1) do
      delete :destroy, id: @integrate_development
    end

    assert_redirected_to integrate_developments_path
  end
end
