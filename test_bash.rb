require "minitest/autorun"
require_relative "bash.rb"

class TestBash < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_end_result_is_array
    	assert_equal(Array, number_comparison().class)
    end

    def test_that_array_contains_strings
    	assert_equal("1", number_comparison[0])
    	assert_equal("2", number_comparison[1])
    	assert_equal("4", number_comparison[2])
    	assert_equal("7", number_comparison[3])
    end


end