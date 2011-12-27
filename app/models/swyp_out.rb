class SwypOut < ActiveRecord::Base
	belongs_to :swypIn
	
	def status
		if self.swypIn? return "paired"
		
		timeDifference = ((DateTime.now - self.created_at)* 60 * 60 * 24).to_i
		puts "time difference #{timeDifference}"
		
		if timeDifference < 10? return "pending"
			
		return "failed"
	end
end
