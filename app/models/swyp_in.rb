class SwypIn < ActiveRecord::Base
	has_one :swypOut
	
	def pair
		self.swypOut = SwypOut.find(3)
		
		if self.swypOut
			puts ["paired swypIn w/ id", self.id, "w/ swypOut id'd: ", self.swypOut.id].join
		else
			puts ["could not pair swypIn w/ id", self.id].join
		end
		
		return self.swypOut
	end
	
	def status
		if self.swypOut.exists
			return "paired"
		end
		return "failed"
	end

end
