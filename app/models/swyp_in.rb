class SwypIn < ActiveRecord::Base
	has_one :swypOut
	
	def pair
		swypOut = SwypOut.find(3)
		
		if swypOut
			puts "paired swypIn w/ id", id, "w/ swypOut id'd: ", swypOut.id
		else
			puts "could not pair swypIn w/ id", id
		end
	end
end
