class SwypIn < ActiveRecord::Base
	has_one :swypOut
	after_save :set_defaults

	def set_defaults
		require "digest"
		self.swypToken  = Digest::MD5.hexdigest("#{DateTime.now.to_i.to_s}#{self.address}#{self.velocity}")
		#||= self.id.to_s
		self.save
	end
	
	def pair
		self.swypOut = SwypOut.last
		
		if self.swypOut
			puts ["paired swypIn w/ id", self.id, "w/ swypOut id'd: ", self.swypOut.id].join
		else
			puts ["could not pair swypIn w/ id", self.id].join
		end
		
		return self.swypOut
	end
	
	def status
		if self.swypOut
			return "paired"
		end
		return "failed"
	end

end
