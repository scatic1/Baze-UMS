require 'test_helper'

class JobAdvertisementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_advertisement = job_advertisements(:one)
  end

  test "should get index" do
    get job_advertisements_url
    assert_response :success
  end

  test "should get new" do
    get new_job_advertisement_url
    assert_response :success
  end

  test "should create job_advertisement" do
    assert_difference('JobAdvertisement.count') do
      post job_advertisements_url, params: { job_advertisement: { work_position: @job_advertisement.work_position } }
    end

    assert_redirected_to job_advertisement_url(JobAdvertisement.last)
  end

  test "should show job_advertisement" do
    get job_advertisement_url(@job_advertisement)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_advertisement_url(@job_advertisement)
    assert_response :success
  end

  test "should update job_advertisement" do
    patch job_advertisement_url(@job_advertisement), params: { job_advertisement: { work_position: @job_advertisement.work_position } }
    assert_redirected_to job_advertisement_url(@job_advertisement)
  end

  test "should destroy job_advertisement" do
    assert_difference('JobAdvertisement.count', -1) do
      delete job_advertisement_url(@job_advertisement)
    end

    assert_redirected_to job_advertisements_url
  end
end
