require 'test_helper'

class SrticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @srticle = srticles(:one)
  end

  test "should get index" do
    get srticles_url
    assert_response :success
  end

  test "should get new" do
    get new_srticle_url
    assert_response :success
  end

  test "should create srticle" do
    assert_difference('Srticle.count') do
      post srticles_url, params: { srticle: { body: @srticle.body, suthor: @srticle.suthor, title: @srticle.title } }
    end

    assert_redirected_to srticle_url(Srticle.last)
  end

  test "should show srticle" do
    get srticle_url(@srticle)
    assert_response :success
  end

  test "should get edit" do
    get edit_srticle_url(@srticle)
    assert_response :success
  end

  test "should update srticle" do
    patch srticle_url(@srticle), params: { srticle: { body: @srticle.body, suthor: @srticle.suthor, title: @srticle.title } }
    assert_redirected_to srticle_url(@srticle)
  end

  test "should destroy srticle" do
    assert_difference('Srticle.count', -1) do
      delete srticle_url(@srticle)
    end

    assert_redirected_to srticles_url
  end
end
