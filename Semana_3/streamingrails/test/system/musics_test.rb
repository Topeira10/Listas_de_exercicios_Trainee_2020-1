require "application_system_test_case"

class MusicsTest < ApplicationSystemTestCase
  setup do
    @music = musics(:one)
  end

  test "visiting the index" do
    visit musics_url
    assert_selector "h1", text: "Musics"
  end

  test "creating a Music" do
    visit musics_url
    click_on "New Music"

    check "Explicit" if @music.explicit
    fill_in "Name", with: @music.name
    click_on "Create Music"

    assert_text "Music was successfully created"
    click_on "Back"
  end

  test "updating a Music" do
    visit musics_url
    click_on "Edit", match: :first

    check "Explicit" if @music.explicit
    fill_in "Name", with: @music.name
    click_on "Update Music"

    assert_text "Music was successfully updated"
    click_on "Back"
  end

  test "destroying a Music" do
    visit musics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Music was successfully destroyed"
  end
end
