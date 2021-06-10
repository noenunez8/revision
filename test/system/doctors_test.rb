require "application_system_test_case"

class DoctorsTest < ApplicationSystemTestCase
  setup do
    @doctor = doctors(:one)
  end

  test "visiting the index" do
    visit doctors_url
    assert_selector "h1", text: "Doctors"
  end

  test "creating a Doctor" do
    visit doctors_url
    click_on "New Doctor"

    fill_in "Direction", with: @doctor.direction_id
    fill_in "First name", with: @doctor.first_name
    fill_in "Last name", with: @doctor.last_name
    fill_in "Speciality", with: @doctor.speciality_id
    click_on "Create Doctor"

    assert_text "Doctor was successfully created"
    click_on "Back"
  end

  test "updating a Doctor" do
    visit doctors_url
    click_on "Edit", match: :first

    fill_in "Direction", with: @doctor.direction_id
    fill_in "First name", with: @doctor.first_name
    fill_in "Last name", with: @doctor.last_name
    fill_in "Speciality", with: @doctor.speciality_id
    click_on "Update Doctor"

    assert_text "Doctor was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor" do
    visit doctors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor was successfully destroyed"
  end
end
