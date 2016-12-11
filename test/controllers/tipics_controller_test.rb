require 'test_helper'

class TipicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipic = tipics(:one)
  end

  test "should get index" do
    get tipics_url
    assert_response :success
  end

  test "should get new" do
    get new_tipic_url
    assert_response :success
  end

  test "should create tipic" do
    assert_difference('Tipic.count') do
      post tipics_url, params: { tipic: { description: @tipic.description, title: @tipic.title } }
    end

    assert_redirected_to tipic_url(Tipic.last)
  end

  test "should show tipic" do
    get tipic_url(@tipic)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipic_url(@tipic)
    assert_response :success
  end

  test "should update tipic" do
    patch tipic_url(@tipic), params: { tipic: { description: @tipic.description, title: @tipic.title } }
    assert_redirected_to tipic_url(@tipic)
  end

  test "should destroy tipic" do
    assert_difference('Tipic.count', -1) do
      delete tipic_url(@tipic)
    end

    assert_redirected_to tipics_url
  end
end
