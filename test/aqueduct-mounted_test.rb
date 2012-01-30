require 'test_helper'

class AqueductMountedTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Aqueduct::Mounted
  end
end
