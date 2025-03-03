require 'test_helper'

class WorkflowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workflow = workflows(:one)
  end

  test "should get index" do
    get workflows_url
    assert_response :success
  end

  test "should get new" do
    get new_workflow_url
    assert_response :success
  end

  test "should create workflow" do
    assert_difference('Workflow.count') do
      post workflows_url, params: { workflow: { incharge_user_id: @workflow.incharge_user_id, location_id: @workflow.location_id, work_id: @workflow.work_id } }
    end

    assert_redirected_to workflow_url(Workflow.last)
  end

  test "should show workflow" do
    get workflow_url(@workflow)
    assert_response :success
  end

  test "should get edit" do
    get edit_workflow_url(@workflow)
    assert_response :success
  end

  test "should update workflow" do
    patch workflow_url(@workflow), params: { workflow: { incharge_user_id: @workflow.incharge_user_id, location_id: @workflow.location_id, work_id: @workflow.work_id } }
    assert_redirected_to workflow_url(@workflow)
  end

  test "should destroy workflow" do
    assert_difference('Workflow.count', -1) do
      delete workflow_url(@workflow)
    end

    assert_redirected_to workflows_url
  end
end
