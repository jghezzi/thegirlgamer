require 'test_helper'

class HowtoplaygamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @howtoplaygame = howtoplaygames(:one)
  end

  test "should get index" do
    get howtoplaygames_url
    assert_response :success
  end

  test "should get new" do
    get new_howtoplaygame_url
    assert_response :success
  end

  test "should create howtoplaygame" do
    assert_difference('Howtoplaygame.count') do
      post howtoplaygames_url, params: { howtoplaygame: { game_id: @howtoplaygame.game_id, instructions: @howtoplaygame.instructions } }
    end

    assert_redirected_to howtoplaygame_url(Howtoplaygame.last)
  end

  test "should show howtoplaygame" do
    get howtoplaygame_url(@howtoplaygame)
    assert_response :success
  end

  test "should get edit" do
    get edit_howtoplaygame_url(@howtoplaygame)
    assert_response :success
  end

  test "should update howtoplaygame" do
    patch howtoplaygame_url(@howtoplaygame), params: { howtoplaygame: { game_id: @howtoplaygame.game_id, instructions: @howtoplaygame.instructions } }
    assert_redirected_to howtoplaygame_url(@howtoplaygame)
  end

  test "should destroy howtoplaygame" do
    assert_difference('Howtoplaygame.count', -1) do
      delete howtoplaygame_url(@howtoplaygame)
    end

    assert_redirected_to howtoplaygames_url
  end
end
