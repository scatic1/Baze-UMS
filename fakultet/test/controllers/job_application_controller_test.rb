require 'test_helper'

class JobApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get job_application_new_url
    assert_response :success
  end

  test "should get edit" do
    get job_application_edit_url
    assert_response :success
  end

  test "should get delete" do
    get job_application_delete_url
    assert_response :success
  end

end
