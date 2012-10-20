# -*- coding: utf-8 -*-

require 'test/unit'
require 'string_helpers'
include StringHelpers

class StringHelpersTest < Test::Unit::TestCase
  def test_string_slug!
      assert_equal "Jhon-Doe", "Jhon Doe".slug!
  end
  
  def test_string_slugged?
    string = "Jhon Doe".slug!
    assert_equal true, string.slugged?
  end
  
  def test_string_fill!
    assert_equal "Jhon...", "Jhon Doe".fill!(4)
  end
  
  def test_string_camelize!
    assert_equal "JhonDoe", "jhon doe".camelize!
  end
  
  def test_string_apostrophe!
    word  = "Marry#{APOSTROPHE_CHAR}#{APOSTROPHE_VALIDATE}"
    assert_equal word, "Marry".apostrophe!
  end
  
  def test_string_apotrophe_with_s!
    word  = "Marry#{APOSTROPHE_VALIDATE}#{APOSTROPHE_CHAR}"
    assert_equal word, "Marry#{APOSTROPHE_VALIDATE}".apostrophe!
  end

  def test_string_blank?
    assert_equal false, " a ".blank?
  end
  
  def test_string_blank!
    assert_equal true, " a".blank!.blank?
  end
end