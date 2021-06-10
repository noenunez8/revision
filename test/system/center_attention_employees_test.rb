require "application_system_test_case"

class CenterAttentionEmployeesTest < ApplicationSystemTestCase
  setup do
    @center_attention_employee = center_attention_employees(:one)
  end

  test "visiting the index" do
    visit center_attention_employees_url
    assert_selector "h1", text: "Center Attention Employees"
  end

  test "creating a Center attention employee" do
    visit center_attention_employees_url
    click_on "New Center Attention Employee"

    fill_in "Baby", with: @center_attention_employee.baby_id
    fill_in "Center attention", with: @center_attention_employee.center_attention_id
    fill_in "Description", with: @center_attention_employee.description
    fill_in "Doctor", with: @center_attention_employee.doctor_id
    fill_in "Mother", with: @center_attention_employee.mother_id
    fill_in "Speciality", with: @center_attention_employee.speciality_id
    click_on "Create Center attention employee"

    assert_text "Center attention employee was successfully created"
    click_on "Back"
  end

  test "updating a Center attention employee" do
    visit center_attention_employees_url
    click_on "Edit", match: :first

    fill_in "Baby", with: @center_attention_employee.baby_id
    fill_in "Center attention", with: @center_attention_employee.center_attention_id
    fill_in "Description", with: @center_attention_employee.description
    fill_in "Doctor", with: @center_attention_employee.doctor_id
    fill_in "Mother", with: @center_attention_employee.mother_id
    fill_in "Speciality", with: @center_attention_employee.speciality_id
    click_on "Update Center attention employee"

    assert_text "Center attention employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Center attention employee" do
    visit center_attention_employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Center attention employee was successfully destroyed"
  end
end
