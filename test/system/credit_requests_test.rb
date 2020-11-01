require "application_system_test_case"

class CreditRequestsTest < ApplicationSystemTestCase
  setup do
    @credit_request = credit_requests(:one)
  end

  test "visiting the index" do
    visit credit_requests_url
    assert_selector "h1", text: "Credit Requests"
  end

  test "creating a Credit request" do
    visit credit_requests_url
    click_on "New Credit Request"

    fill_in "Periods", with: @credit_request.periods
    fill_in "Requester", with: @credit_request.requester_id
    fill_in "Taxa", with: @credit_request.taxa
    fill_in "Value", with: @credit_request.value
    click_on "Create Credit request"

    assert_text "Credit request was successfully created"
    click_on "Back"
  end

  test "updating a Credit request" do
    visit credit_requests_url
    click_on "Edit", match: :first

    fill_in "Periods", with: @credit_request.periods
    fill_in "Requester", with: @credit_request.requester_id
    fill_in "Taxa", with: @credit_request.taxa
    fill_in "Value", with: @credit_request.value
    click_on "Update Credit request"

    assert_text "Credit request was successfully updated"
    click_on "Back"
  end

  test "destroying a Credit request" do
    visit credit_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Credit request was successfully destroyed"
  end
end
