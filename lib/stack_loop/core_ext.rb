# frozen_string_literal: true

require_relative "message"

class SystemStackError
	def message
		super + "\n" + StackLoop.message(stack_loop_backtrace)
	end

	alias_method :stack_loop_backtrace, :backtrace
	def backtrace
		if ENV["STACK_LOOP_BACKTRACE"] == 1
			stack_loop_backtrace
		else
			["backtrace skept, STACK_LOOP_BACKTRACE=1 to set it back"]
		end
	end
end