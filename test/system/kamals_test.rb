require "application_system_test_case"

class KamalsTest < ApplicationSystemTestCase
  setup do
    @kamal = kamals(:one)
  end

  test "visiting the index" do
    visit kamals_url
    assert_selector "h1", text: "Kamals"
  end

  test "should create kamal" do
    visit kamals_url
    click_on "New kamal"

    fill_in "Index", with: @kamal.index
    click_on "Create Kamal"

    assert_text "Kamal was successfully created"
    click_on "Back"
  end

  test "should update Kamal" do
    visit kamal_url(@kamal)
    click_on "Edit this kamal", match: :first

    fill_in "Index", with: @kamal.index
    click_on "Update Kamal"

    assert_text "Kamal was successfully updated"
    click_on "Back"
  end

  test "should destroy Kamal" do
    visit kamal_url(@kamal)
    click_on "Destroy this kamal", match: :first

    assert_text "Kamal was successfully destroyed"
  end
end
