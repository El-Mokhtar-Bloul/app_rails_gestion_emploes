require "test_helper"

class EmployessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employess = employesses(:one)
  end

  test "should get index" do
    get employesses_url
    assert_response :success
  end

  test "should get new" do
    get new_employess_url
    assert_response :success
  end

  test "should create employess" do
    assert_difference("Employess.count") do
      post employesses_url, params: { employess: { age: @employess.age, nom: @employess.nom, prenom: @employess.prenom, salaire: @employess.salaire } }
    end

    assert_redirected_to employess_url(Employess.last)
  end

  test "should show employess" do
    get employess_url(@employess)
    assert_response :success
  end

  test "should get edit" do
    get edit_employess_url(@employess)
    assert_response :success
  end

  test "should update employess" do
    patch employess_url(@employess), params: { employess: { age: @employess.age, nom: @employess.nom, prenom: @employess.prenom, salaire: @employess.salaire } }
    assert_redirected_to employess_url(@employess)
  end

  test "should destroy employess" do
    assert_difference("Employess.count", -1) do
      delete employess_url(@employess)
    end

    assert_redirected_to employesses_url
  end
end
