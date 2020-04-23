require 'test_helper'

class ActionDispatch::DisableXXssProtection::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ActionDispatch::DisableXXssProtection
  end
end
