require "test_helper"

class CanAddNewPostTest < Capybara::Rails::TestCase
  test "add post title Hey post I did it" do
    visit root_path
    click_link 'new post'
    fill_in 'Title', :with => 'Hey'
    fill_in 'Body', :with => 'I did it'
    click_button 'Save'
    assert_content page, "HEY"

  end
end
