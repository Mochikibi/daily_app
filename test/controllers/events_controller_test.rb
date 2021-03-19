require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get rails" do
    get events_rails_url
    assert_response :success
  end

  test "should get g" do
    get events_g_url
    assert_response :success
  end

  test "should get controller" do
    get events_controller_url
    assert_response :success
  end

  test "should get events" do
    get events_events_url
    assert_response :success
  end

  test "should get index" do
    get events_index_url
    assert_response :success
  end

  test "should get new" do
    get events_new_url
    assert_response :success
  end

  test "should get create" do
    get events_create_url
    assert_response :success
  end

  test "should get show" do
    get events_show_url
    assert_response :success
  end

  test "should get edit" do
    get events_edit_url
    assert_response :success
  end

  test "should get update" do
    get events_update_url
    assert_response :success
  end

  test "should get destroy" do
    get events_destroy_url
    assert_response :success
  end

end
