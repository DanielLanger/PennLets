require 'test_helper'

class FiltersControllerTest < ActionController::TestCase
  setup do
    @filter = filters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filter" do
    assert_difference('Filter.count') do
      post :create, filter: { air_conditioning: @filter.air_conditioning, available_rooms: @filter.available_rooms, bathrooms: @filter.bathrooms, furnished: @filter.furnished, negotiable: @filter.negotiable, new: @filter.new, parking: @filter.parking, price: @filter.price, private_bathroom: @filter.private_bathroom, show: @filter.show, term: @filter.term, total_rooms: @filter.total_rooms, utilities: @filter.utilities, washer_dryer: @filter.washer_dryer }
    end

    assert_redirected_to filter_path(assigns(:filter))
  end

  test "should show filter" do
    get :show, id: @filter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filter
    assert_response :success
  end

  test "should update filter" do
    put :update, id: @filter, filter: { air_conditioning: @filter.air_conditioning, available_rooms: @filter.available_rooms, bathrooms: @filter.bathrooms, furnished: @filter.furnished, negotiable: @filter.negotiable, new: @filter.new, parking: @filter.parking, price: @filter.price, private_bathroom: @filter.private_bathroom, show: @filter.show, term: @filter.term, total_rooms: @filter.total_rooms, utilities: @filter.utilities, washer_dryer: @filter.washer_dryer }
    assert_redirected_to filter_path(assigns(:filter))
  end

  test "should destroy filter" do
    assert_difference('Filter.count', -1) do
      delete :destroy, id: @filter
    end

    assert_redirected_to filters_path
  end
end
