require 'test_helper'

class NootsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noot = noots(:one)
  end

  test "should get index" do
    get noots_url
    assert_response :success
  end

  test "should get new" do
    get new_noot_url
    assert_response :success
  end

  test "should create noot" do
    assert_difference('Noot.count') do
      post noots_url, params: { noot: { materia: @noot.materia, nota_bimestral: @noot.nota_bimestral, nota_mensal: @noot.nota_mensal } }
    end

    assert_redirected_to noot_url(Noot.last)
  end

  test "should show noot" do
    get noot_url(@noot)
    assert_response :success
  end

  test "should get edit" do
    get edit_noot_url(@noot)
    assert_response :success
  end

  test "should update noot" do
    patch noot_url(@noot), params: { noot: { materia: @noot.materia, nota_bimestral: @noot.nota_bimestral, nota_mensal: @noot.nota_mensal } }
    assert_redirected_to noot_url(@noot)
  end

  test "should destroy noot" do
    assert_difference('Noot.count', -1) do
      delete noot_url(@noot)
    end

    assert_redirected_to noots_url
  end
end
