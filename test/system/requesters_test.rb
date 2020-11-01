require "application_system_test_case"

class RequestersTest < ApplicationSystemTestCase
  setup do
    @requester = requesters(:one)
  end

  test "visiting the index" do
    visit requesters_url
    assert_selector "h1", text: "Requesters"
  end

  test "creating a Requester" do
    visit requesters_url
    click_on "New Requester"

    fill_in "Cnpj", with: @requester.cnpj
    fill_in "Razao social", with: @requester.razao_social
    click_on "Create Requester"

    assert_text "Requester was successfully created"
    click_on "Back"
  end

  test "updating a Requester" do
    visit requesters_url
    click_on "Edit", match: :first

    fill_in "Cnpj", with: @requester.cnpj
    fill_in "Razao social", with: @requester.razao_social
    click_on "Update Requester"

    assert_text "Requester was successfully updated"
    click_on "Back"
  end

  test "destroying a Requester" do
    visit requesters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requester was successfully destroyed"
  end
end
