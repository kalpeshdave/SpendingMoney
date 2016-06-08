require 'test_helper'

class BillFriendsControllerTest < ActionController::TestCase
  setup do
    @bill_friend = bill_friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_friend" do
    assert_difference('BillFriend.count') do
      post :create, bill_friend: {  }
    end

    assert_redirected_to bill_friend_path(assigns(:bill_friend))
  end

  test "should show bill_friend" do
    get :show, id: @bill_friend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_friend
    assert_response :success
  end

  test "should update bill_friend" do
    put :update, id: @bill_friend, bill_friend: {  }
    assert_redirected_to bill_friend_path(assigns(:bill_friend))
  end

  test "should destroy bill_friend" do
    assert_difference('BillFriend.count', -1) do
      delete :destroy, id: @bill_friend
    end

    assert_redirected_to bill_friends_path
  end
end
