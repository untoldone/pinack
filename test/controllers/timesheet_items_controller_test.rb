require 'test_helper'

class TimesheetItemsControllerTest < ActionController::TestCase
  setup do
    @timesheet_item = timesheet_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timesheet_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timesheet_item" do
    assert_difference('TimesheetItem.count') do
      post :create, timesheet_item: { billed: @timesheet_item.billed, date: @timesheet_item.date, hours: @timesheet_item.hours, notes: @timesheet_item.notes }
    end

    assert_redirected_to timesheet_item_path(assigns(:timesheet_item))
  end

  test "should show timesheet_item" do
    get :show, id: @timesheet_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timesheet_item
    assert_response :success
  end

  test "should update timesheet_item" do
    patch :update, id: @timesheet_item, timesheet_item: { billed: @timesheet_item.billed, date: @timesheet_item.date, hours: @timesheet_item.hours, notes: @timesheet_item.notes }
    assert_redirected_to timesheet_item_path(assigns(:timesheet_item))
  end

  test "should destroy timesheet_item" do
    assert_difference('TimesheetItem.count', -1) do
      delete :destroy, id: @timesheet_item
    end

    assert_redirected_to timesheet_items_path
  end
end
