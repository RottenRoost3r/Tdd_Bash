require "minitest/autorun"
require_relative "bash.rb"

class TestBash < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_number_comparison_returns_number
    	assert_equal(Integer, number_comparison("", "").class)
    end

    def test_that_1_match_returns_3
    	assert_equal(3, number_comparison("1111", "1222"))
    end

    def test_that_2_matches_returns_2
    	assert_equal(2, number_comparison("1111", "1122"))
    end

 	def test_if_numbers_are_off
    	assert_equal([2,1,0], check_for_match_arr_2(["1222", "1235", "1234",], "1234"))
   end
   
	def test_if_one_offs_return
		assert_equal(["1235"], check_for_match_arr(["1222", "1235", "1234"], "1234"))
    end

    def test_if_winners_equal_2
    	assert_equal([2, 0], winarr(["1234", "1234", "1244", "1255"], ["1234", "1299"]))
    end
end