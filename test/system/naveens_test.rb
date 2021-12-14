require "application_system_test_case"

class NaveensTest < ApplicationSystemTestCase
  setup do
    @naveen = naveens(:one)
  end

  test "visiting the index" do
    visit naveens_url
    assert_selector "h1", text: "Naveens"
  end

  test "creating a Naveen" do
    visit naveens_url
    click_on "New Naveen"

    fill_in "Name1", with: @naveen.name1
    click_on "Create Naveen"

    assert_text "Naveen was successfully created"
    click_on "Back"
  end

  test "updating a Naveen" do
    visit naveens_url
    click_on "Edit", match: :first

    fill_in "Name1", with: @naveen.name1
    click_on "Update Naveen"

    assert_text "Naveen was successfully updated"
    click_on "Back"
  end

  test "destroying a Naveen" do
    visit naveens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Naveen was successfully destroyed"
  end
end
