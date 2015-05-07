require 'test_helper'

class ArtworksControllerTest < ActionController::TestCase
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post :create, artwork: { depth: @artwork.depth, exhibition_id: @artwork.exhibition_id, height: @artwork.height, mediums: @artwork.mediums, title: @artwork.title, width: @artwork.width, year_completed: @artwork.year_completed, year_started: @artwork.year_started }
    end

    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should show artwork" do
    get :show, id: @artwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork
    assert_response :success
  end

  test "should update artwork" do
    patch :update, id: @artwork, artwork: { depth: @artwork.depth, exhibition_id: @artwork.exhibition_id, height: @artwork.height, mediums: @artwork.mediums, title: @artwork.title, width: @artwork.width, year_completed: @artwork.year_completed, year_started: @artwork.year_started }
    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete :destroy, id: @artwork
    end

    assert_redirected_to artworks_path
  end
end
