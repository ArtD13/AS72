require 'test_helper'

class SchollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scholl = scholls(:one)
  end

  test "should get index" do
    get scholls_url
    assert_response :success
  end

  test "should get new" do
    get new_scholl_url
    assert_response :success
  end

  test "should create scholl" do
    assert_difference('Scholl.count') do
      post scholls_url, params: { scholl: { adress: @scholl.adress, body: @scholl.body, category: @scholl.category, name: @scholl.name, phone: @scholl.phone } }
    end

    assert_redirected_to scholl_url(Scholl.last)
  end

  test "should show scholl" do
    get scholl_url(@scholl)
    assert_response :success
  end

  test "should get edit" do
    get edit_scholl_url(@scholl)
    assert_response :success
  end

  test "should update scholl" do
    patch scholl_url(@scholl), params: { scholl: { adress: @scholl.adress, body: @scholl.body, category: @scholl.category, name: @scholl.name, phone: @scholl.phone } }
    assert_redirected_to scholl_url(@scholl)
  end

  test "should destroy scholl" do
    assert_difference('Scholl.count', -1) do
      delete scholl_url(@scholl)
    end

    assert_redirected_to scholls_url
  end
end
