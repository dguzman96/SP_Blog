require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get :home
    #get pages_home_url
    assert_response :success
    asset_select "title", "Welcome"
  end

  test "should get about" do
    get #about
    #get pages_about_url
    assert_response :success
    asset_select "title", "About Us"
  end

  test "should get directions"
    get :directions
    assert_response :success
    asset_select "title", "Directions"
  end
  #end
