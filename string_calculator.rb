def add(arg = nil)
	return "No input supplied" if arg.nil?
	
	delimiter = arg.start_with?("//") ? arg[2] : "\n" 
	arg = arg.gsub(delimiter, ",")
	arg.split(',').map(&:to_i).sum
end