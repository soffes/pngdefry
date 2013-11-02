require 'test_helper'
require 'dimensions'

class PngdefryTest < MiniTest::Test
  def test_version_number
    refute_nil Pngdefry::VERSION
  end

  def test_defry
    # Remove tmp dir to make sure it will create it
    FileUtils.rm_rf('tmp')

    # Fried PNGs give back crap dimensions
    refute_equal [80, 80], Dimensions.dimensions('test/data/40@2x.png')

    # Defry it
    Pngdefry.defry('test/data/40@2x.png', 'tmp/40@2x.png')

    # Now we should have the proper dimensions
    assert_equal [80, 80], Dimensions.dimensions('tmp/40@2x.png')
  end

  def test_dimensions
    assert_equal [80, 80], Pngdefry.dimensions('test/data/40@2x.png')
    assert_equal [120, 120], Pngdefry.dimensions('test/data/60@2x.png')
  end

  def teardown
    FileUtils.rm_rf('tmp')
  end
end
