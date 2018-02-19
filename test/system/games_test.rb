require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  test "Going to /new gives us a new random grid to play with" do
    visit new_url
    assert_text  "New game"
    assert_selector "li", count: 10
  end

  test "Going to /new gives us a new random grid to play with 2" do
    visit new_url
    assert_text  "New game"
    fill_in 'word', with: 'word'
  end
end
