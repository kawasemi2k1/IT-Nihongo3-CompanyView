require 'test_helper'

class CompaniesReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companies_review = companies_reviews(:one)
  end

  test "should get index" do
    get companies_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_companies_review_url
    assert_response :success
  end

  test "should create companies_review" do
    assert_difference('CompaniesReview.count') do
      post companies_reviews_url, params: { companies_review: { companies_id: @companies_review.companies_id, review: @companies_review.review, user_id: @companies_review.user_id } }
    end

    assert_redirected_to companies_review_url(CompaniesReview.last)
  end

  test "should show companies_review" do
    get companies_review_url(@companies_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_companies_review_url(@companies_review)
    assert_response :success
  end

  test "should update companies_review" do
    patch companies_review_url(@companies_review), params: { companies_review: { companies_id: @companies_review.companies_id, review: @companies_review.review, user_id: @companies_review.user_id } }
    assert_redirected_to companies_review_url(@companies_review)
  end

  test "should destroy companies_review" do
    assert_difference('CompaniesReview.count', -1) do
      delete companies_review_url(@companies_review)
    end

    assert_redirected_to companies_reviews_url
  end
end
