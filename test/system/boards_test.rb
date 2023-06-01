require "application_system_test_case"

class BoardsTest < ApplicationSystemTestCase
  setup do
    @board = boards(:one)
  end

  test "visiting the index" do
    visit boards_url
    assert_selector "h1", text: "Boards"
  end

  test "should create board" do
    visit boards_url
    click_on "New board"

    fill_in "Created at", with: @board.created_at
    fill_in "Email", with: @board.email
    fill_in "Height", with: @board.height
    fill_in "Id", with: @board.id
    fill_in "Mine count", with: @board.mine_count
    fill_in "Mine data", with: @board.mine_data
    fill_in "Name", with: @board.name
    fill_in "Width", with: @board.width
    click_on "Create Board"

    assert_text "Board was successfully created"
    click_on "Back"
  end

  test "should update Board" do
    visit board_url(@board)
    click_on "Edit this board", match: :first

    fill_in "Created at", with: @board.created_at
    fill_in "Email", with: @board.email
    fill_in "Height", with: @board.height
    fill_in "Id", with: @board.id
    fill_in "Mine count", with: @board.mine_count
    fill_in "Mine data", with: @board.mine_data
    fill_in "Name", with: @board.name
    fill_in "Width", with: @board.width
    click_on "Update Board"

    assert_text "Board was successfully updated"
    click_on "Back"
  end

  test "should destroy Board" do
    visit board_url(@board)
    click_on "Destroy this board", match: :first

    assert_text "Board was successfully destroyed"
  end
end
