require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index when logged in" do
    post login_path, params: {
      email: @user.email,
      password: "password123"
    }

    get tasks_path

    assert_response :success
  end

  test "should get new when logged in" do
    post login_path, params: {
      email: @user.email,
      password: "password123"
    }

    get new_task_path

    assert_response :success
  end
end
