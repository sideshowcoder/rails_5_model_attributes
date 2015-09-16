require 'test_helper'

class WalletsControllerTest < ActionController::TestCase
  setup do
    @wallet = wallets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wallet" do
    assert_difference('Wallet.count') do
      post :create, params: { wallet: { title: @wallet.title } }
    end

    assert_redirected_to wallet_path(Wallet.last)
  end

  test "should show wallet" do
    get :show, params: { id: @wallet }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @wallet }
    assert_response :success
  end

  test "should update wallet" do
    patch :update, params: { id: @wallet, wallet: { title: @wallet.title } }
    assert_redirected_to wallet_path(@wallet)
  end

  test "should destroy wallet" do
    assert_difference('Wallet.count', -1) do
      delete :destroy, params: { id: @wallet }
    end

    assert_redirected_to wallets_path
  end
end
