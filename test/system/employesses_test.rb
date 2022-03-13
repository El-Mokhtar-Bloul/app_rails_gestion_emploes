require "application_system_test_case"

class EmployessesTest < ApplicationSystemTestCase
  setup do
    @employess = employesses(:one)
  end

  test "visiting the index" do
    visit employesses_url
    assert_selector "h1", text: "Employesses"
  end

  test "should create employess" do
    visit employesses_url
    click_on "New employess"

    fill_in "Age", with: @employess.age
    fill_in "Nom", with: @employess.nom
    fill_in "Prenom", with: @employess.prenom
    fill_in "Salaire", with: @employess.salaire
    click_on "Create Employess"

    assert_text "Employess was successfully created"
    click_on "Back"
  end

  test "should update Employess" do
    visit employess_url(@employess)
    click_on "Edit this employess", match: :first

    fill_in "Age", with: @employess.age
    fill_in "Nom", with: @employess.nom
    fill_in "Prenom", with: @employess.prenom
    fill_in "Salaire", with: @employess.salaire
    click_on "Update Employess"

    assert_text "Employess was successfully updated"
    click_on "Back"
  end

  test "should destroy Employess" do
    visit employess_url(@employess)
    click_on "Destroy this employess", match: :first

    assert_text "Employess was successfully destroyed"
  end
end
