require 'test_helper'

class TodoListsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get todo_lists_edit_url
    assert_response :success
  end

  test "should get create" do
    get todo_lists_create_url
    assert_response :success
  end

end
