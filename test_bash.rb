require "minitest/autorun"
require_relative "bash.rb"

class TestBash < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_number_comparison_returns_number
    	assert_equal(Integer, number_comparison("", "").class)
    end

    def test_that_1_match_returns_1
    	assert_equal(1, number_comparison("1111", "1222"))
    end

    def test_that_2_matches_returns_2
    	assert_equal(2, number_comparison("1111", "1122"))
    end
end