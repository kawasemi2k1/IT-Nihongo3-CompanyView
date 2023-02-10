require "application_system_test_case"

class CompaniesReviewsTest < ApplicationSystemTestCase
  setup do
    @companies_review = companies_reviews(:one)
  end

  test "visiting the index" do
    visit companies_reviews_url
    assert_selector "h1", text: "Companies Reviews"
  end

  test "creating a Companies review" do
    visit companies_reviews_url
    click_on "New Companies Review"

    fill_in "Companies", with: @companies_review.companies_id
    fill_in "Review", with: @companies_review.review
    fill_in "User", with: @companies_review.user_id
    click_on "Create Companies review"

    assert_text "Companies review was successfully created"
    click_on "Back"
  end

  test "updating a Companies review" do
    visit companies_reviews_url
    click_on "Edit", match: :first

    fill_in "Companies", with: @companies_review.companies_id
    fill_in "Review", with: @companies_review.review
    fill_in "User", with: @companies_review.user_id
    click_on "Update Companies review"

    assert_text "Companies review was successfully updated"
    click_on "Back"
  end

  test "destroying a Companies review" do
    visit companies_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Companies review was successfully destroyed"
  end
end
