require "application_system_test_case"

class ProsTest < ApplicationSystemTestCase
  setup do
    @pro = pros(:one)
  end

  test "visiting the index" do
    visit pros_url
    assert_selector "h1", text: "Pros"
  end

  test "should create pro" do
    visit pros_url
    click_on "New pro"

    fill_in "Name", with: @pro.name
    click_on "Create Pro"

    assert_text "Pro was successfully created"
    click_on "Back"
  end

  test "should update Pro" do
    visit pro_url(@pro)
    click_on "Edit this pro", match: :first

    fill_in "Name", with: @pro.name
    click_on "Update Pro"

    assert_text "Pro was successfully updated"
    click_on "Back"
  end

  test "should destroy Pro" do
    visit pro_url(@pro)
    click_on "Destroy this pro", match: :first

    assert_text "Pro was successfully destroyed"
  end
end
