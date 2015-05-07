require 'test_helper'

class ExhibitionsControllerTest < ActionController::TestCase
  setup do
    @exhibition = exhibitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibition" do
    assert_difference('Exhibition.count') do
      post :create, exhibition: { curator: @exhibition.curator, exhibition_image_url2: @exhibition.exhibition_image_url2, exhibition_image_url: @exhibition.exhibition_image_url, exhibition_type: @exhibition.exhibition_type, finish_month: @exhibition.finish_month, press_url: @exhibition.press_url, start_month: @exhibition.start_month, subtitle: @exhibition.subtitle, title: @exhibition.title, venue_id: @exhibition.venue_id, year: @exhibition.year }
    end

    assert_redirected_to exhibition_path(assigns(:exhibition))
  end

  test "should show exhibition" do
    get :show, id: @exhibition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibition
    assert_response :success
  end

  test "should update exhibition" do
    patch :update, id: @exhibition, exhibition: { curator: @exhibition.curator, exhibition_image_url2: @exhibition.exhibition_image_url2, exhibition_image_url: @exhibition.exhibition_image_url, exhibition_type: @exhibition.exhibition_type, finish_month: @exhibition.finish_month, press_url: @exhibition.press_url, start_month: @exhibition.start_month, subtitle: @exhibition.subtitle, title: @exhibition.title, venue_id: @exhibition.venue_id, year: @exhibition.year }
    assert_redirected_to exhibition_path(assigns(:exhibition))
  end

  test "should destroy exhibition" do
    assert_difference('Exhibition.count', -1) do
      delete :destroy, id: @exhibition
    end

    assert_redirected_to exhibitions_path
  end
end
