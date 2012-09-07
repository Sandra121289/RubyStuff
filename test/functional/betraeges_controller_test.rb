require 'test_helper'

class BetraegesControllerTest < ActionController::TestCase
  setup do
    @betraege = betraeges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:betraeges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create betraege" do
    assert_difference('Betraege.count') do
      post :create, :betraege => { :betrag => @betraege.betrag, :email => @betraege.email, :name => @betraege.name, :vorname => @betraege.vorname }
    end

    assert_redirected_to betraege_path(assigns(:betraege))
  end

  test "should show betraege" do
    get :show, :id => @betraege
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @betraege
    assert_response :success
  end

  test "should update betraege" do
    put :update, :id => @betraege, :betraege => { :betrag => @betraege.betrag, :email => @betraege.email, :name => @betraege.name, :vorname => @betraege.vorname }
    assert_redirected_to betraege_path(assigns(:betraege))
  end

  test "should destroy betraege" do
    assert_difference('Betraege.count', -1) do
      delete :destroy, :id => @betraege
    end

    assert_redirected_to betraeges_path
  end
end
