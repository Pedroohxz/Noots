require 'test_helper'

class TestesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testis = testes(:one)
  end

  test "should get index" do
    get testes_url
    assert_response :success
  end

  test "should get new" do
    get new_testis_url
    assert_response :success
  end

  test "should create testis" do
    assert_difference('Testis.count') do
      post testes_url, params: { testis: { materia: @testis.materia, nota_bimestral: @testis.nota_bimestral, nota_mensal: @testis.nota_mensal } }
    end

    assert_redirected_to testis_url(Testis.last)
  end

  test "should show testis" do
    get testis_url(@testis)
    assert_response :success
  end

  test "should get edit" do
    get edit_testis_url(@testis)
    assert_response :success
  end

  test "should update testis" do
    patch testis_url(@testis), params: { testis: { materia: @testis.materia, nota_bimestral: @testis.nota_bimestral, nota_mensal: @testis.nota_mensal } }
    assert_redirected_to testis_url(@testis)
  end

  test "should destroy testis" do
    assert_difference('Testis.count', -1) do
      delete testis_url(@testis)
    end

    assert_redirected_to testes_url
  end
end
