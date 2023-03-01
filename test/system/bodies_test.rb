require "application_system_test_case"

class BodiesTest < ApplicationSystemTestCase
  setup do
    @body = bodies(:one)
  end

  test "visiting the index" do
    visit bodies_url
    assert_selector "h1", text: "Bodies"
  end

  test "should create body" do
    visit bodies_url
    click_on "New body"

    fill_in "Post", with: @body.post_id
    fill_in "User", with: @body.user_id
    click_on "Create Body"

    assert_text "Body was successfully created"
    click_on "Back"
  end

  test "should update Body" do
    visit body_url(@body)
    click_on "Edit this body", match: :first

    fill_in "Post", with: @body.post_id
    fill_in "User", with: @body.user_id
    click_on "Update Body"

    assert_text "Body was successfully updated"
    click_on "Back"
  end

  test "should destroy Body" do
    visit body_url(@body)
    click_on "Destroy this body", match: :first

    assert_text "Body was successfully destroyed"
  end
end
