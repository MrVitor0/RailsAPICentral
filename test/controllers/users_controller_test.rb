require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { char_cep: @user.char_cep, char_email: @user.char_email, char_name: @user.char_name, char_street: @user.char_street, city: @user.city, date_dt_birth: @user.date_dt_birth, int_document: @user.int_document, int_neighbourhood: @user.int_neighbourhood, state: @user.state } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { char_cep: @user.char_cep, char_email: @user.char_email, char_name: @user.char_name, char_street: @user.char_street, city: @user.city, date_dt_birth: @user.date_dt_birth, int_document: @user.int_document, int_neighbourhood: @user.int_neighbourhood, state: @user.state } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
