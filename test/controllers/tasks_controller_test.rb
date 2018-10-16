require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    sign_in users(:bothari)
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:bothari)
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    sign_in users(:bothari)
    assert_difference('Task.count') do
      post tasks_url, params: { task: { event_id: @task.event_id, taken: @task.taken, title: @task.title } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    sign_in users(:bothari)
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:bothari)
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    sign_in users(:bothari)
    patch task_url(@task), params: { task: { event_id: @task.event_id, taken: @task.taken, title: @task.title } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    sign_in users(:bothari)
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
