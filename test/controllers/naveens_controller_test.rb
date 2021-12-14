require "test_helper"

class NaveensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @naveen = naveens(:one)
  end

  test "should get index" do
    get naveens_url
    assert_response :success
  end

  test "should get new" do
    get new_naveen_url
    assert_response :success
  end

  test "should create naveen" do
    assert_difference('Naveen.count') do
      post naveens_url, params: { naveen: { name1: @naveen.name1 } }
    end

    assert_redirected_to naveen_url(Naveen.last)
  end

  test "should show naveen" do
    get naveen_url(@naveen)
    assert_response :success
  end

  test "should get edit" do
    get edit_naveen_url(@naveen)
    assert_response :success
  end

  test "should update naveen" do
    patch naveen_url(@naveen), params: { naveen: { name1: @naveen.name1 } }
    assert_redirected_to naveen_url(@naveen)
  end

  test "should destroy naveen" do
    assert_difference('Naveen.count', -1) do
      delete naveen_url(@naveen)
    end

    assert_redirected_to naveens_url
  end
end
