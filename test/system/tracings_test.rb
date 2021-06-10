require "application_system_test_case"

class TracingsTest < ApplicationSystemTestCase
  setup do
    @tracing = tracings(:one)
  end

  test "visiting the index" do
    visit tracings_url
    assert_selector "h1", text: "Tracings"
  end

  test "creating a Tracing" do
    visit tracings_url
    click_on "New Tracing"

    fill_in "Baby", with: @tracing.baby_id
    fill_in "Date of visit", with: @tracing.date_of_visit
    fill_in "Description", with: @tracing.description
    fill_in "Mother", with: @tracing.mother_id
    fill_in "Mother is health", with: @tracing.mother_is_health
    fill_in "Son is health", with: @tracing.son_is_health
    click_on "Create Tracing"

    assert_text "Tracing was successfully created"
    click_on "Back"
  end

  test "updating a Tracing" do
    visit tracings_url
    click_on "Edit", match: :first

    fill_in "Baby", with: @tracing.baby_id
    fill_in "Date of visit", with: @tracing.date_of_visit
    fill_in "Description", with: @tracing.description
    fill_in "Mother", with: @tracing.mother_id
    fill_in "Mother is health", with: @tracing.mother_is_health
    fill_in "Son is health", with: @tracing.son_is_health
    click_on "Update Tracing"

    assert_text "Tracing was successfully updated"
    click_on "Back"
  end

  test "destroying a Tracing" do
    visit tracings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tracing was successfully destroyed"
  end
end
