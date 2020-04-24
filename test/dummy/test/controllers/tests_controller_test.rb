require 'test_helper'

class TestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @original_default_headers = ActionDispatch::Response.default_headers.dup
  end

  teardown do
    ActionDispatch::Response.default_headers = @original_default_headers
  end

  test 'GET /test returns "X-XSS-Protection: 0"' do
    get test_url

    assert_equal '0', response.get_header('X-XSS-Protection')
  end

  test 'GET /test returns "X-XSS-Protection: 1" when the settings have changed' do
    ActionDispatch::Response.default_headers = { 'X-XSS-Protection' => '1' }

    get test_url

    assert_equal '1', response.get_header('X-XSS-Protection')
  end
end
