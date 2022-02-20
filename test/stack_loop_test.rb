# frozen_string_literal: true

require_relative "test_helper"

class TestMeme < Minitest::Test
	def foo
		bar
	end

	def bar
		baz
	end

	def baz
		foo
	end

	def test_error
		foo
	end
end
