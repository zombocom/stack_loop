# frozen_string_literal: true

module StackLoop
	module_function def message(backtrace)
		loop_detector = Hash.new(false)
		cycles = Hash.new(0)
		backtrace.each do |bt|
			if loop_detector[bt]
				cycles[loop_detector.keys] += 1
				loop_detector.clear
			end

			loop_detector[bt] = true
		end

		cycle, count = cycles.max_by { |_, count| count }
		["Most frequent loop (called #{count} times):", cycle.map { |line| "\t#{line}" }, nil].join("\n")
	end
end