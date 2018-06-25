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
    	assert_equal("1357", number_comparison[0])
    end


end