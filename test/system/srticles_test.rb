require "application_system_test_case"

class SrticlesTest < ApplicationSystemTestCase
  setup do
    @srticle = srticles(:one)
  end

  test "visiting the index" do
    visit srticles_url
    assert_selector "h1", text: "Srticles"
  end

  test "creating a Srticle" do
    visit srticles_url
    click_on "New Srticle"

    fill_in "Body", with: @srticle.body
    fill_in "Suthor", with: @srticle.suthor
    fill_in "Title", with: @srticle.title
    click_on "Create Srticle"

    assert_text "Srticle was successfully created"
    click_on "Back"
  end

  test "updating a Srticle" do
    visit srticles_url
    click_on "Edit", match: :first

    fill_in "Body", with: @srticle.body
    fill_in "Suthor", with: @srticle.suthor
    fill_in "Title", with: @srticle.title
    click_on "Update Srticle"

    assert_text "Srticle was successfully updated"
    click_on "Back"
  end

  test "destroying a Srticle" do
    visit srticles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Srticle was successfully destroyed"
  end
end
