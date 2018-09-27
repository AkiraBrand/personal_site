require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end
  #
  # Try to see if you can write a test before you implement the code below.
  # It should attempt to visit some page that does not exist,
  # assert that we get a 404 status code (indicating that the client has made an error),
  # and assert that the page has some sort of message indicating
  # that the page doesn't exist.

  def test_user_sees_an_error_message_when_visiting_nonexistent_page
    visit '/hello'

    assert_equal 404, page.status_code
    assert page.has_content?("Page not found.")
  end

  def test_visiting_about_sends_me_to_about
    visit '/about'

    assert_equal 200, page.status_code
    assert page.has_content?("About Me!")
  end

end
