require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | MetaCog"
  end

  test "should get help" do
    get resources_url
    assert_response :success
    assert_select "title", "Help | MetaCog"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | MetaCog"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | MetaCog"
  end

end
