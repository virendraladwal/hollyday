require "test_helper"

class KamalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kamal = kamals(:one)
  end

  test "should get index" do
    get kamals_url
    assert_response :success
  end

  test "should get new" do
    get new_kamal_url
    assert_response :success
  end

  test "should create kamal" do
    assert_difference("Kamal.count") do
      post kamals_url, params: { kamal: { index: @kamal.index } }
    end

    assert_redirected_to kamal_url(Kamal.last)
  end

  test "should show kamal" do
    get kamal_url(@kamal)
    assert_response :success
  end

  test "should get edit" do
    get edit_kamal_url(@kamal)
    assert_response :success
  end

  test "should update kamal" do
    patch kamal_url(@kamal), params: { kamal: { index: @kamal.index } }
    assert_redirected_to kamal_url(@kamal)
  end

  test "should destroy kamal" do
    assert_difference("Kamal.count", -1) do
      delete kamal_url(@kamal)
    end

    assert_redirected_to kamals_url
  end
end
