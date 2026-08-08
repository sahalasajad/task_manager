require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "user can view the tasks dashboard" do
    visit login_path

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password123"

    click_on "Log in"

    assert_current_path tasks_path

    assert_text "Good afternoon, Test User"
  end
end
