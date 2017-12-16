require 'test_helper'

class ExamApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam_application = exam_applications(:one)
  end

  test "should get index" do
    get exam_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_exam_application_url
    assert_response :success
  end

  test "should create exam_application" do
    assert_difference('ExamApplication.count') do
      post exam_applications_url, params: { exam_application: { apply: @exam_application.apply, exam_id: @exam_application.exam_id, student_id: @exam_application.student_id } }
    end

    assert_redirected_to exam_application_url(ExamApplication.last)
  end

  test "should show exam_application" do
    get exam_application_url(@exam_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_exam_application_url(@exam_application)
    assert_response :success
  end

  test "should update exam_application" do
    patch exam_application_url(@exam_application), params: { exam_application: { apply: @exam_application.apply, exam_id: @exam_application.exam_id, student_id: @exam_application.student_id } }
    assert_redirected_to exam_application_url(@exam_application)
  end

  test "should destroy exam_application" do
    assert_difference('ExamApplication.count', -1) do
      delete exam_application_url(@exam_application)
    end

    assert_redirected_to exam_applications_url
  end
end
