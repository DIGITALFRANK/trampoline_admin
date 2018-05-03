require 'test_helper'

class InstructorApplicantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instructor_applicants_index_url
    assert_response :success
  end

  test "should get create" do
    get instructor_applicants_create_url
    assert_response :success
  end

  test "should get new" do
    get instructor_applicants_new_url
    assert_response :success
  end

  test "should get show" do
    get instructor_applicants_show_url
    assert_response :success
  end

  test "should get edit" do
    get instructor_applicants_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get instructor_applicants_destroy_url
    assert_response :success
  end

end
