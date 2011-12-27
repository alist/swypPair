class SwypIn < ActiveRecord::Base
	has_one :swypOut
	
	def pair
		SwypIn.swypOut = swypOut.find(3)
		
		if SwypIn.swypOut
			puts "paired swypIn w/ id", SwypIn.id, "w/ swypOut id'd: ", SwypIn.swypOut.id
		else
			puts "could not pair swypIn w/ id", SwypIn.id
		end
	end
end
